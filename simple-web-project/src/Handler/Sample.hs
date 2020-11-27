{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module Handler.Sample where

import Import

getSampleR :: Handler Html
getSampleR = do
    let
        title = "これはサンプルです。" :: Text
    defaultLayout $(widgetFile "sample")
