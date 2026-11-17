.class Lcom/fusepowered/m2/mobileads/HtmlWebViewClient$1;
.super Ljava/lang/Object;
.source "HtmlWebViewClient.java"

# interfaces
.implements Lcom/fusepowered/m2/common/UrlHandler$MoPubSchemeListener;


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
    .line 68
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient$1;->this$0:Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient$1;->this$0:Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;->access$100(Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;)Lcom/fusepowered/m2/mobileads/HtmlWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/m2/mobileads/HtmlWebViewListener;->onCollapsed()V

    .line 77
    return-void
.end method

.method public onFailLoad()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient$1;->this$0:Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;->access$100(Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;)Lcom/fusepowered/m2/mobileads/HtmlWebViewListener;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/mobileads/HtmlWebViewListener;->onFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V

    .line 82
    return-void
.end method

.method public onFinishLoad()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient$1;->this$0:Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;->access$100(Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;)Lcom/fusepowered/m2/mobileads/HtmlWebViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient$1;->this$0:Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;

    invoke-static {v1}, Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;->access$000(Lcom/fusepowered/m2/mobileads/HtmlWebViewClient;)Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/mobileads/HtmlWebViewListener;->onLoaded(Lcom/fusepowered/m2/mobileads/BaseHtmlWebView;)V

    .line 72
    return-void
.end method
