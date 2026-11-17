.class Lcom/fusepowered/as/view/component/VpaidWebView$1;
.super Landroid/webkit/WebViewClient;
.source "VpaidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/component/VpaidWebView;-><init>(Landroid/content/Context;Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;Lcom/fusepowered/as/model/ad/VASTProviderAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/component/VpaidWebView;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/component/VpaidWebView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fusepowered/as/view/component/VpaidWebView$1;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 103
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

    .line 104
    new-instance v0, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView$1;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-virtual {v1}, Lcom/fusepowered/as/view/component/VpaidWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;->execute()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method
