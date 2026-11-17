.class Lcom/fusepowered/as/view/component/VpaidWebView$2;
.super Ljava/lang/Object;
.source "VpaidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/component/VpaidWebView;->initAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

.field final synthetic val$self:Lcom/fusepowered/as/view/component/VpaidWebView;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/component/VpaidWebView;Lcom/fusepowered/as/view/component/VpaidWebView;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/fusepowered/as/view/component/VpaidWebView$2;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    iput-object p2, p0, Lcom/fusepowered/as/view/component/VpaidWebView$2;->val$self:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView$2;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView$2;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-virtual {v1}, Lcom/fusepowered/as/view/component/VpaidWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/as/utils/DisplayUtils;->getActivitySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/DisplayUtils;->convertPointToDip(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Size is %dx%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "var ad = iframe.contentWindow[\'getVPAIDAd\']();var creativeData=new Object();creativeData.AdParameters=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/as/view/component/VpaidWebView$2;->this$0:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-static {v2}, Lcom/fusepowered/as/view/component/VpaidWebView;->access$000(Lcom/fusepowered/as/view/component/VpaidWebView;)Lcom/fusepowered/as/model/ad/VASTProviderAd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/Vpaid;->getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getAdParameters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "var environmentVars=new Object();"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "environmentVars.slot=document.getElementById(\'aerservVpaidSlot\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "environmentVars.videoSlot=document.getElementById(\'aerservVpaidVideoSlot\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "environmentVars.videoSlotCanAutoPlay=true;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdLoaded, \'AdLoaded\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdImpression, \'AdImpression\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdError, \'AdError\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdStarted, \'AdStarted\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdVideoStart, \'AdVideoStart\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdVideoFirstQuartile, \'AdVideoFirstQuartile\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdVideoMidpoint, \'AdVideoMidpoint\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdVideoThirdQuartile, \'AdVideoThirdQuartile\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdVideoComplete, \'AdVideoComplete\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdClickThru, \'AdClickThru\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdStopped, \'AdStopped\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdPaused, \'AdPaused\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdPlaying, \'AdPlaying\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.subscribe(aerserv_android.onAdUserAcceptInvitation, \'AdUserAcceptInvitation\', aerserv_android);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad.initAd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \'normal\', 1000000, creativeData, environmentVars);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView$2;->val$self:Lcom/fusepowered/as/view/component/VpaidWebView;

    invoke-static {v1, v0}, Lcom/fusepowered/as/utils/WebViewJSRunner;->runIt(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 225
    return-void
.end method
