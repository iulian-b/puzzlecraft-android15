.class Lcom/fusepowered/m2/common/BrowserWebViewClient$1;
.super Ljava/lang/Object;
.source "BrowserWebViewClient.java"

# interfaces
.implements Lcom/fusepowered/m2/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/common/BrowserWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/common/BrowserWebViewClient;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/common/BrowserWebViewClient;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient$1;->this$0:Lcom/fusepowered/m2/common/BrowserWebViewClient;

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
    .line 68
    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/fusepowered/m2/common/UrlAction;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "urlAction"    # Lcom/fusepowered/m2/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    sget-object v0, Lcom/fusepowered/m2/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/fusepowered/m2/common/UrlAction;

    invoke-virtual {p2, v0}, Lcom/fusepowered/m2/common/UrlAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient$1;->this$0:Lcom/fusepowered/m2/common/BrowserWebViewClient;

    invoke-static {v0}, Lcom/fusepowered/m2/common/BrowserWebViewClient;->access$000(Lcom/fusepowered/m2/common/BrowserWebViewClient;)Lcom/fusepowered/m2/common/M2Browser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/common/M2Browser;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/common/BrowserWebViewClient$1;->this$0:Lcom/fusepowered/m2/common/BrowserWebViewClient;

    invoke-static {v0}, Lcom/fusepowered/m2/common/BrowserWebViewClient;->access$000(Lcom/fusepowered/m2/common/BrowserWebViewClient;)Lcom/fusepowered/m2/common/M2Browser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/common/M2Browser;->finish()V

    goto :goto_0
.end method
