import System.Environment
import System.Random
import Data.Array.IArray

print2DArray :: [[String]] -> IO ()
print2DArray = mapM_ print
--main = print2DArray [["1","2","3"],["4","5","6"]]

main = do
  g <- newStdGen
  let img = listArray ((0,0),(5,5)) ( myRands g ) :: Array (String,String) String
  print2DArray img
--  print2DArray $ eitherSide img

myRands :: RandomGen g => g -> [String]
myRands g = randomRs ("X","O") g

--printArray arr =
--  unlines [unwords [show (arr ! (x, y)) | x <- [0..5]] | y <- [0..5]]


--eitherSide :: (Array (Int,Int) Int board) => board -> Int
--eitherSide board = board(0,0) + board(0,1)
