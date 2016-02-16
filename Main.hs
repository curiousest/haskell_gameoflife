import System.Environment
import System.Random
import Data.Array.IArray

main = do
  g <- newStdGen
  let img = listArray ((0,0),(5,5)) ( myRands g ) :: Array (Int,Int) Int
  putStrLn $ printArray img
  putStrLn $ eitherSide img

myRands :: RandomGen g => g -> [Int]
myRands g = randomRs (0,1) g

printArray arr =
  unlines [unwords [show (arr ! (x, y)) | x <- [0..5]] | y <- [0..5]]


eitherSide :: (Array (Int,Int) Int board) => board -> Int
eitherSide board = board(0,0) + board(0,1)
