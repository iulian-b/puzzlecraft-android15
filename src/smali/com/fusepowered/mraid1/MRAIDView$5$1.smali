.class Lcom/fusepowered/mraid1/MRAIDView$5$1;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/mraid1/MRAIDView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/mraid1/MRAIDView$5;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iput-object p2, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 482
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$900(Lcom/fusepowered/mraid1/MRAIDView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$1300(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 484
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v1, v1, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$1400(Lcom/fusepowered/mraid1/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/mraid1/MRAIDView;->addView(Landroid/view/View;)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$1400(Lcom/fusepowered/mraid1/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 487
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$1400(Lcom/fusepowered/mraid1/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 488
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v1, v1, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$1600(Lcom/fusepowered/mraid1/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$1502(Lcom/fusepowered/mraid1/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 489
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v1, v1, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$1500(Lcom/fusepowered/mraid1/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$1700(Lcom/fusepowered/mraid1/MRAIDView;Landroid/webkit/WebView;)V

    .line 490
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$1500(Lcom/fusepowered/mraid1/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v1, v1, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$1800(Lcom/fusepowered/mraid1/MRAIDView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->val$content:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v1, v1, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$1500(Lcom/fusepowered/mraid1/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$1902(Lcom/fusepowered/mraid1/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 492
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$2002(Lcom/fusepowered/mraid1/MRAIDView;Z)Z

    .line 493
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$5$1;->this$1:Lcom/fusepowered/mraid1/MRAIDView$5;

    iget-object v0, v0, Lcom/fusepowered/mraid1/MRAIDView$5;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2100(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 494
    return-void
.end method
