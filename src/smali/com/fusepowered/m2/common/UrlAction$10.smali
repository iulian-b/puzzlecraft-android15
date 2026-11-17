.class final enum Lcom/fusepowered/m2/common/UrlAction$10;
.super Lcom/fusepowered/m2/common/UrlAction;
.source "UrlAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/common/UrlAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .param p3, "x0"    # Z

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fusepowered/m2/common/UrlAction;-><init>(Ljava/lang/String;IZLcom/fusepowered/m2/common/UrlAction$1;)V

    return-void
.end method


# virtual methods
.method protected performAction(Landroid/content/Context;Landroid/net/Uri;Lcom/fusepowered/m2/common/UrlHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "urlHandler"    # Lcom/fusepowered/m2/common/UrlHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fusepowered/m2/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .prologue
    .line 296
    return-void
.end method

.method public shouldTryHandlingUrl(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method
