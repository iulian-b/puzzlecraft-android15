.class Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;
.super Ljava/lang/Object;
.source "ExpandedMraidInterstitialStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;->this$0:Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;->this$0:Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->access$400(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;->this$0:Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->access$500(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Lcom/fusepowered/as/view/component/ASMraidWebView;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->HIDDEN:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->updateMraidState(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;->this$0:Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->access$700(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Lcom/fusepowered/as/view/component/ASMraidWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->onExpandedBannerClose()V

    .line 233
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;->this$0:Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->access$300(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/view/ASWebviewInterstitialActivity;->finish()V

    .line 234
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;->this$0:Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->access$500(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Lcom/fusepowered/as/view/component/ASMraidWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->setOnSetOrientationPropertiesListener(Lcom/fusepowered/as/controller/listener/OnSetOrientationPropertiesListener;)V

    .line 227
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;->this$0:Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->access$500(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Lcom/fusepowered/as/view/component/ASMraidWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->getMraidJavascriptInterfaceListener()Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;->revertOnCloseListener()V

    .line 228
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;->this$0:Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->access$500(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Lcom/fusepowered/as/view/component/ASMraidWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;->this$0:Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;

    invoke-static {v1}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->access$500(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Lcom/fusepowered/as/view/component/ASMraidWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;->this$0:Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;

    invoke-static {v0}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->access$600(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy$6;->this$0:Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;

    invoke-static {v1}, Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;->access$500(Lcom/fusepowered/as/strategy/ExpandedMraidInterstitialStrategy;)Lcom/fusepowered/as/view/component/ASMraidWebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method
