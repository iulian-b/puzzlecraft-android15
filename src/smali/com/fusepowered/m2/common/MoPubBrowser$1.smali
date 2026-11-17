.class Lcom/fusepowered/m2/common/MoPubBrowser$1;
.super Landroid/webkit/WebChromeClient;
.source "MoPubBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/common/M2Browser;->initializeWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/common/M2Browser;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/common/M2Browser;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/fusepowered/m2/common/MoPubBrowser$1;->this$0:Lcom/fusepowered/m2/common/M2Browser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fusepowered/m2/common/MoPubBrowser$1;->this$0:Lcom/fusepowered/m2/common/M2Browser;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/common/M2Browser;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/fusepowered/m2/common/MoPubBrowser$1;->this$0:Lcom/fusepowered/m2/common/M2Browser;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/common/M2Browser;->setProgress(I)V

    .line 117
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/fusepowered/m2/common/MoPubBrowser$1;->this$0:Lcom/fusepowered/m2/common/M2Browser;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/common/M2Browser;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    return-void
.end method
