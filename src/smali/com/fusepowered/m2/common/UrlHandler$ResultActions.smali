.class public interface abstract Lcom/fusepowered/m2/common/UrlHandler$ResultActions;
.super Ljava/lang/Object;
.source "UrlHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/common/UrlHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultActions"
.end annotation


# virtual methods
.method public abstract urlHandlingFailed(Ljava/lang/String;Lcom/fusepowered/m2/common/UrlAction;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/fusepowered/m2/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract urlHandlingSucceeded(Ljava/lang/String;Lcom/fusepowered/m2/common/UrlAction;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/fusepowered/m2/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
