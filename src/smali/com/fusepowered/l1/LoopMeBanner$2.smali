.class Lcom/fusepowered/l1/LoopMeBanner$2;
.super Ljava/lang/Object;
.source "LoopMeBanner.java"

# interfaces
.implements Lcom/fusepowered/l1/AdWebViewBridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeBanner;->fetchAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/LoopMeBanner;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/LoopMeBanner;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeBanner$2;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsClose()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onJsLoadFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "mess"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner$2;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeBanner$2;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    new-instance v2, Lcom/fusepowered/l1/LoopMeError;

    invoke-direct {v2, p1}, Lcom/fusepowered/l1/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/l1/LoopMeBanner;->onLoopMeBannerLoadFail(Lcom/fusepowered/l1/LoopMeBanner;Lcom/fusepowered/l1/LoopMeError;)V

    .line 140
    return-void
.end method

.method public onJsLoadSuccess()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner$2;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeBanner;->loadComplete()V

    .line 135
    return-void
.end method

.method public onNonLoopMe(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeBanner$2;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    invoke-static {v1}, Lcom/fusepowered/l1/BaseAdHolder;->put(Lcom/fusepowered/l1/BaseAd;)V

    .line 149
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeBanner$2;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    iget-object v1, v1, Lcom/fusepowered/l1/LoopMeBanner;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeBanner$2;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    iget-object v2, p0, Lcom/fusepowered/l1/LoopMeBanner$2;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    invoke-virtual {v1, v2}, Lcom/fusepowered/l1/LoopMeBanner;->onLoopMeBannerClicked(Lcom/fusepowered/l1/LoopMeBanner;)V

    .line 154
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/fusepowered/l1/AdActivity;->setKeepAlive(Z)V

    .line 155
    iget-object v1, p0, Lcom/fusepowered/l1/LoopMeBanner$2;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    iget-object v1, v1, Lcom/fusepowered/l1/LoopMeBanner;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method
