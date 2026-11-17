.class Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$MyWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;


# direct methods
.method private constructor <init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$MyWebViewClient;-><init>(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->access$700(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Lcom/fusepowered/sa/android/publish/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fusepowered/sa/android/publish/a/b;->getSmartRedirect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-static {v0, p2, v1}, Lcom/fusepowered/sa/android/publish/f/o;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->access$300(Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    return v2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard$MyWebViewClient;->this$0:Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
