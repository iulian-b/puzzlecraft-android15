.class Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x3

    const-string v0, "StartAppWall.BannerHtmlInitializing BannerHtml"

    invoke-static {v6, v0}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->access$200(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-static {v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->access$200(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/a;->b()I

    move-result v2

    invoke-static {v1, v2}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v2, v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->setMinimumWidth(I)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v2, v1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->setMinimumHeight(I)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-static {v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->access$300(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/fusepowered/sa/android/publish/JsInterface;

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v4}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2$1;

    invoke-direct {v5, p0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2$1;-><init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;)V

    invoke-direct {v3, v4, v5}, Lcom/fusepowered/sa/android/publish/JsInterface;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    const-string v4, "startappwall"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-static {v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->access$300(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$MyWebViewClient;

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$MyWebViewClient;-><init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-static {v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->access$500(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-static {v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->access$600(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->load()V

    :cond_0
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-static {v1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->access$300(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    const-string v2, "StartAppWall.BannerHtmlBannerHTML already Loaded"

    invoke-static {v6, v2}, Lcom/fusepowered/sa/android/publish/f/g;->a(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$2;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-static {v3}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->access$700(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Lcom/fusepowered/sa/android/publish/a/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->onReceiveAd(Lcom/fusepowered/sa/android/publish/Ad;)V

    goto :goto_0
.end method
