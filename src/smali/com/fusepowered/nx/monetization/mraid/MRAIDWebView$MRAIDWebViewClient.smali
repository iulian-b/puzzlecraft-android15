.class Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MRAIDWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRAIDWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;


# direct methods
.method private constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;
    .param p2, "x1"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$1;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;-><init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->onPageFinished()V

    .line 331
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 332
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 301
    :try_start_0
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$300(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 302
    invoke-static {p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$UrlScheme;->checkForScheme(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$UrlScheme;

    move-result-object v1

    .line 303
    .local v1, "scheme":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$UrlScheme;
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$300(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-static {v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$400(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, p2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDSchemeHandler;->handleScheme(Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$UrlScheme;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v2

    const-string v3, "Loading custom url scheme"

    invoke-static {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;)V

    .line 322
    .end local v1    # "scheme":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$UrlScheme;
    :cond_0
    :goto_0
    return v5

    .line 308
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$500(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 309
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not MRAID AD. Opening url in android browser - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->i(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->startMRAIDBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/nx/monetization/enums/AdEvent;->USER_NAVIGATES_OUT_OF_APP:Lcom/fusepowered/nx/monetization/enums/AdEvent;

    const-string v4, "The user clicked on a link in the ad and is navigating out of the app"

    invoke-virtual {v2, v3, v4}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->fireListener(Lcom/fusepowered/nx/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;->getWillCloseAdOnRedirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->releaseAd(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->e(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;

    invoke-static {v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;->access$200(Lcom/fusepowered/nx/monetization/mraid/MRAIDWebView;)Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Url blocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
