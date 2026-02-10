import Control.Monad.Writer
logAndAdd :: Int -> Writer [String] Int
logAndAdd x = do
 tell ["Adding " ++ show x] -- Add to the log
 return (x + 1)
writerExample :: Writer [String] Int
writerExample = do
 a <- logAndAdd 5
 b <- logAndAdd 10
 return (a + b)
main :: IO ()
main = print (runWriter writerExample)
