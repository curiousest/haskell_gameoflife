import Data.Array.IArray

print2DArray :: [[String]] -> IO ()
print2DArray = mapM_ print
main = print2DArray [["1","2","3"],["4","5","6"]]

