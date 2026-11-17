.class Lcom/fusepowered/as/view/component/ASMraidWebView$1;
.super Landroid/webkit/WebViewClient;
.source "ASMraidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/component/ASMraidWebView;-><init>(Landroid/content/Context;Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/component/ASMraidWebView;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/component/ASMraidWebView;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fusepowered/as/view/component/ASMraidWebView$1;->this$0:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView$1;->this$0:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->access$000(Lcom/fusepowered/as/view/component/ASMraidWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView$1;->this$0:Lcom/fusepowered/as/view/component/ASMraidWebView;

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->EXPANDED:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fusepowered/as/view/component/ASMraidWebView$1;->this$0:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-static {v3}, Lcom/fusepowered/as/view/component/ASMraidWebView;->access$100(Lcom/fusepowered/as/view/component/ASMraidWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mraid.getCurrentPosition();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mraid.fireReady();"

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/as/view/component/ASMraidWebView;->updateMraidState(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView$1;->this$0:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->access$200(Lcom/fusepowered/as/view/component/ASMraidWebView;)Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

    invoke-interface {v0, v1}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->fireMraidEvent(Lcom/fusepowered/as/AerServEvent;)V

    .line 79
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView$1;->this$0:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-static {v0}, Lcom/fusepowered/as/view/component/ASMraidWebView;->access$200(Lcom/fusepowered/as/view/component/ASMraidWebView;)Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->MRAID_READY:Lcom/fusepowered/as/AerServEvent;

    invoke-interface {v0, v1}, Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;->fireMraidEvent(Lcom/fusepowered/as/AerServEvent;)V

    .line 80
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/view/component/ASMraidWebView$1;->this$0:Lcom/fusepowered/as/view/component/ASMraidWebView;

    sget-object v1, Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;->DEFAULT:Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fusepowered/as/view/component/ASMraidWebView$1;->this$0:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-static {v3}, Lcom/fusepowered/as/view/component/ASMraidWebView;->access$100(Lcom/fusepowered/as/view/component/ASMraidWebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mraid.getCurrentPosition();"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mraid.fireReady();"

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/as/view/component/ASMraidWebView;->updateMraidState(Lcom/fusepowered/as/adapter/asaerserv/mraid/MraidState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/ASMraidWebView$1;->this$0:Lcom/fusepowered/as/view/component/ASMraidWebView;

    invoke-virtual {v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;->execute()V

    .line 92
    const/4 v0, 0x1

    return v0
.end method
