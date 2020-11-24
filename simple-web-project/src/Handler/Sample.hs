{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module Handler.Sample where

import Import

getSampleR :: Handler Html
getSampleR = defaultLayout $(widgetFile "sample")
