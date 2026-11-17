.class Lcom/fusepowered/m2/mobileads/HtmlWebViewClient$2;
.super Ljava/lang/Object;
.source "HtmlWebViewClient.java"

# interfaces
.implements Lcom/fusepowered/m2/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient$2;->this$0:Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;

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
    .line 66
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
    .line 57
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient$2;->this$0:Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;->access$000(Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;)Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->wasClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient$2;->this$0:Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;->access$100(Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;)Lcom/fusepowered/m2/mobileads/HtmlWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/m2/mobileads/HtmlWebViewListener;->onClicked()V

    .line 59
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient$2;->this$0:Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;->access$000(Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;)Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;->onResetUserClick()V

    .line 61
    :cond_0
    return-void
.end method
