.class Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Client;
.super Landroid/webkit/WebViewClient;
.source "FuseInterstitialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field activity:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;

.field final synthetic this$0:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;


# direct methods
.method public constructor <init>(Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;)V
    .locals 0
    .param p2, "fuseInterstitialActivity"    # Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Client;->this$0:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 255
    iput-object p2, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Client;->activity:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;

    .line 256
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Client;->activity:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Client;->activity:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 261
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Client;->activity:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->onReceiveError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity$Client;->activity:Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/ads/adapters/FuseInterstitialActivity;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
