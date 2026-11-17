.class public interface abstract Lcom/fusepowered/nx/videoplayer/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract play(Ljava/lang/String;Lcom/fusepowered/nx/videoplayer/VideoPlayer$Options;Landroid/content/Context;Lcom/fusepowered/nx/videoplayer/VideoListener;Z)Z
.end method

.method public abstract prepare(Ljava/lang/String;Z)Z
.end method
