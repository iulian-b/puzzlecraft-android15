.class Lcom/fusepowered/m2/mobileads/VastVideoViewController$6;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Lcom/fusepowered/m2/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/VastVideoViewController;->handleClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$6;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/fusepowered/m2/common/UrlAction;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "lastFailedUrlAction"    # Lcom/fusepowered/m2/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 704
    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/fusepowered/m2/common/UrlAction;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "urlAction"    # Lcom/fusepowered/m2/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 692
    sget-object v1, Lcom/fusepowered/m2/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/fusepowered/m2/common/UrlAction;

    if-ne p2, v1, :cond_0

    .line 693
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 694
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$6;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getBaseVideoViewControllerListener()Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v1

    const-class v2, Lcom/fusepowered/m2/common/M2Browser;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onStartActivityForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 699
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
