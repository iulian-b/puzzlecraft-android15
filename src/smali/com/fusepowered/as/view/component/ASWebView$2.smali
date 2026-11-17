.class Lcom/fusepowered/as/view/component/ASWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "ASWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/component/ASWebView;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/component/ASWebView;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/component/ASWebView;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3

    .prologue
    .line 96
    const-string v0, "console.log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- From line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 105
    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/ASWebView;->access$000(Lcom/fusepowered/as/view/component/ASWebView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/ASWebView;->access$108(Lcom/fusepowered/as/view/component/ASWebView;)I

    .line 110
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    new-instance v0, Lcom/fusepowered/as/view/component/ASWebView$2$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/view/component/ASWebView$2$1;-><init>(Lcom/fusepowered/as/view/component/ASWebView$2;)V

    .line 144
    iget-object v1, p0, Lcom/fusepowered/as/view/component/ASWebView$2;->this$0:Lcom/fusepowered/as/view/component/ASWebView;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/fusepowered/as/view/component/ASWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    :cond_0
    return-void

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
