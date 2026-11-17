.class Lcom/fusepowered/l1/AdBrowserActivity$5;
.super Ljava/lang/Object;
.source "AdBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/AdBrowserActivity;->initButtonListeners(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/AdBrowserActivity;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/AdBrowserActivity;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/fusepowered/l1/AdBrowserActivity$5;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    iput-object p2, p0, Lcom/fusepowered/l1/AdBrowserActivity$5;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/fusepowered/l1/AdBrowserActivity$5;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .local v1, "browserIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/fusepowered/l1/AdBrowserActivity$5;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-virtual {v3, v1}, Lcom/fusepowered/l1/AdBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    iget-object v3, p0, Lcom/fusepowered/l1/AdBrowserActivity$5;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-static {v3}, Lcom/fusepowered/l1/AdBrowserActivity;->access$500(Lcom/fusepowered/l1/AdBrowserActivity;)Lcom/fusepowered/l1/BaseAd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/l1/BaseAd;->getAdFormat()Lcom/fusepowered/l1/AdFormat;

    move-result-object v3

    sget-object v4, Lcom/fusepowered/l1/AdFormat;->BANNER:Lcom/fusepowered/l1/AdFormat;

    if-ne v3, v4, :cond_0

    .line 175
    iget-object v3, p0, Lcom/fusepowered/l1/AdBrowserActivity$5;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-static {v3}, Lcom/fusepowered/l1/AdBrowserActivity;->access$500(Lcom/fusepowered/l1/AdBrowserActivity;)Lcom/fusepowered/l1/BaseAd;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/l1/LoopMeBanner;

    .line 176
    .local v0, "banner":Lcom/fusepowered/l1/LoopMeBanner;
    invoke-virtual {v0, v0}, Lcom/fusepowered/l1/LoopMeBanner;->onLoopMeBannerLeaveApp(Lcom/fusepowered/l1/LoopMeBanner;)V

    .line 181
    .end local v0    # "banner":Lcom/fusepowered/l1/LoopMeBanner;
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/fusepowered/l1/AdBrowserActivity$5;->this$0:Lcom/fusepowered/l1/AdBrowserActivity;

    invoke-static {v3}, Lcom/fusepowered/l1/AdBrowserActivity;->access$500(Lcom/fusepowered/l1/AdBrowserActivity;)Lcom/fusepowered/l1/BaseAd;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/l1/LoopMeInterstitial;

    .line 179
    .local v2, "interstitial":Lcom/fusepowered/l1/LoopMeInterstitial;
    invoke-virtual {v2, v2}, Lcom/fusepowered/l1/LoopMeInterstitial;->onLoopMeInterstitialLeaveApp(Lcom/fusepowered/l1/LoopMeInterstitial;)V

    goto :goto_0
.end method
