.class public interface abstract Lcom/fusepowered/FuseSDKListenerWithGameData;
.super Ljava/lang/Object;
.source "FuseSDKListenerWithGameData.java"

# interfaces
.implements Lcom/fusepowered/FuseSDKListener;


# virtual methods
.method public abstract gameDataError(Lcom/fusepowered/FuseError;I)V
.end method

.method public abstract gameDataReceived(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;I)V
.end method

.method public abstract gameDataSetAcknowledged(I)V
.end method
