.class public final Lcom/fusepowered/as/view/component/VpaidWebView;
.super Landroid/webkit/WebView;
.source "VpaidWebView.java"

# interfaces
.implements Lcom/fusepowered/as/view/vastplayer/VpaidPlayer;


# instance fields
.field private ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

.field private allImpressionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

.field private volatile currentTime:F

.field private currentTimeMonitor:Ljava/lang/Object;

.field private duration:F

.field private handShook:Z

.field private hasPassedCloseOffset:Z

.field private isLoaded:Z

.field private volatile killed:Z

.field private killedMonitor:Ljava/lang/Object;

.field private vpaidPlayerListener:Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;Lcom/fusepowered/as/model/ad/VASTProviderAd;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v3, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->handShook:Z

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->currentTimeMonitor:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->killedMonitor:Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->vpaidPlayerListener:Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;

    .line 77
    iput-object p3, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    .line 79
    invoke-virtual {p0}, Lcom/fusepowered/as/view/component/VpaidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 80
    invoke-virtual {p0, v3}, Lcom/fusepowered/as/view/component/VpaidWebView;->setVerticalScrollBarEnabled(Z)V

    .line 81
    invoke-virtual {p0, v3}, Lcom/fusepowered/as/view/component/VpaidWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 82
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->setBackgroundColor(I)V

    .line 85
    new-instance v0, Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-direct {v0}, Lcom/fusepowered/as/model/vast/TrackingEvents;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    .line 87
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    invoke-virtual {p3}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Vpaid;->getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->PROGRESS:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    sget-object v1, Lcom/fusepowered/as/model/vast/EventType;->PROGRESS:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {p3, v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/as/model/vast/TrackingEvents;->addAll(Ljava/util/Collection;)Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->allImpressionEvents:Ljava/util/List;

    .line 94
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->allImpressionEvents:Ljava/util/List;

    invoke-virtual {p3}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Vpaid;->getAd()Lcom/fusepowered/as/model/vast/InLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/InLine;->getImpressionUris()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->allImpressionEvents:Ljava/util/List;

    invoke-virtual {p3}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperImpressionUris()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v0, Lcom/fusepowered/as/view/component/VpaidWebView$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/as/view/component/VpaidWebView$1;-><init>(Lcom/fusepowered/as/view/component/VpaidWebView;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 108
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/fusepowered/as/view/component/VpaidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 113
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/as/view/component/VpaidWebView;)Lcom/fusepowered/as/model/ad/VASTProviderAd;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fusepowered/as/view/component/VpaidWebView;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->duration:F

    return v0
.end method

.method static synthetic access$200(Lcom/fusepowered/as/view/component/VpaidWebView;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->killedMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fusepowered/as/view/component/VpaidWebView;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->killed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/fusepowered/as/view/component/VpaidWebView;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->currentTimeMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fusepowered/as/view/component/VpaidWebView;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->currentTime:F

    return v0
.end method

.method static synthetic access$600(Lcom/fusepowered/as/view/component/VpaidWebView;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->hasPassedCloseOffset:Z

    return v0
.end method

.method static synthetic access$602(Lcom/fusepowered/as/view/component/VpaidWebView;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->hasPassedCloseOffset:Z

    return p1
.end method

.method static synthetic access$700(Lcom/fusepowered/as/view/component/VpaidWebView;)Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->vpaidPlayerListener:Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fusepowered/as/view/component/VpaidWebView;)Lcom/fusepowered/as/model/vast/TrackingEvents;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->allProgressEvents:Lcom/fusepowered/as/model/vast/TrackingEvents;

    return-object v0
.end method

.method private startVideoTimer()V
    .locals 2

    .prologue
    .line 542
    .line 544
    const-string v0, "aerserv_android.onGetAdDurationCallback(ad.getAdDuration());"

    invoke-static {p0, v0}, Lcom/fusepowered/as/utils/WebViewJSRunner;->runIt(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 545
    const-string v0, "aerserv_android.onGetAdRemainingTimeCallback(ad.getAdRemainingTime());"

    invoke-static {p0, v0}, Lcom/fusepowered/as/utils/WebViewJSRunner;->runIt(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/as/view/component/VpaidWebView$3;

    invoke-direct {v1, p0, p0}, Lcom/fusepowered/as/view/component/VpaidWebView$3;-><init>(Lcom/fusepowered/as/view/component/VpaidWebView;Lcom/fusepowered/as/view/component/VpaidWebView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 610
    return-void
.end method


# virtual methods
.method public getIsLoaded()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->isLoaded:Z

    return v0
.end method

.method public handshakeVersionCallback(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vpaid version is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/fusepowered/as/view/component/VpaidWebView;->initAd()V

    .line 180
    return-void
.end method

.method public initAd()V
    .locals 1

    .prologue
    .line 189
    .line 191
    new-instance v0, Lcom/fusepowered/as/view/component/VpaidWebView$2;

    invoke-direct {v0, p0, p0}, Lcom/fusepowered/as/view/component/VpaidWebView$2;-><init>(Lcom/fusepowered/as/view/component/VpaidWebView;Lcom/fusepowered/as/view/component/VpaidWebView;)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void
.end method

.method public load()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Vpaid;->getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Vpaid;->getMediaFile()Lcom/fusepowered/as/model/vast/MediaFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/Vpaid;->getMediaFile()Lcom/fusepowered/as/model/vast/MediaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/model/vast/MediaFile;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There was an issue with the vpaid ad.  could not continue."

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->vpaidPlayerListener:Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;->onFailure()V

    .line 160
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string v0, "aerserv_android"

    invoke-virtual {p0, p0, v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head></head><body style=\"margin:0px;\"><div id=\"aerservVpaidSlot\"\"><video id=\"aerservVpaidVideoSlot\" style=\"width: 100%; height: 100%;\"></video></div><script type=\"text/javascript\">iframe = document.createElement(\'iframe\');iframe.id = \"adloaderframe\";iframe.frameBorder=\"0\";document.body.appendChild(iframe);iframe.contentWindow.document.write(\'<html><head><script type=\"text/javascript\" src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Vpaid;->getMediaFile()Lcom/fusepowered/as/model/vast/MediaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/MediaFile;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"></scr\'+\'ipt></head><body><script type=\"text/javascript\">window.parent.aerservVpaidReady();</scr\'+\'ipt></body></html>\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "function aerservVpaidReady() {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "var fn = iframe.contentWindow[\'getVPAIDAd\'];"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if (!fn || typeof fn != \'function\') {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onAdError();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "return;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aerserv_android.handshakeVersionCallback(fn().handshakeVersion(\'2.1.05\'))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {p0, v0, v1, v2}, Lcom/fusepowered/as/view/component/VpaidWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdClickThru(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 383
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad click thru!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Vpaid;->getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/LinearCreative;->getClickTrackingUris()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 385
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearClickTrackingUris()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 389
    :try_start_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 391
    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;

    invoke-virtual {p0}, Lcom/fusepowered/as/view/component/VpaidWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/LaunchBrowserCommand;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "could not parse playerHandles to boolean"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error message from vpaid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->vpaidPlayerListener:Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;->onFailure()V

    .line 294
    return-void
.end method

.method public onAdImpression()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad impression!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->allImpressionEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 275
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    new-instance v2, Lcom/fusepowered/as/controller/command/FireEventCommand;

    invoke-direct {v2, v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 282
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad loaded!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->allImpressionEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 241
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    new-instance v2, Lcom/fusepowered/as/controller/command/FireEventCommand;

    invoke-direct {v2, v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/as/view/component/VpaidWebView;->play()V

    .line 251
    return-void
.end method

.method public onAdPaused()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad paused"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Vpaid;->getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->PAUSE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 408
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->PAUSE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 409
    return-void
.end method

.method public onAdPlaying()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad resume"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Vpaid;->getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->RESUME:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 417
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->RESUME:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 418
    return-void
.end method

.method public onAdStarted()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad started!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Vpaid;->getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->CREATIVE_VIEW:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 306
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->CREATIVE_VIEW:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 308
    return-void
.end method

.method public onAdStopped()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad stopped!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->vpaidPlayerListener:Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;->onComplete()V

    .line 477
    return-void
.end method

.method public onAdUserAcceptInvitation()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad accept invitation"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Vpaid;->getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->ACCEPT_INVITATION:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 426
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->ACCEPT_INVITATION:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 427
    return-void
.end method

.method public onAdVideoComplete()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad complete!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Vpaid;->getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->COMPLETE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 371
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->COMPLETE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 372
    iget-object v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->vpaidPlayerListener:Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;

    invoke-interface {v0}, Lcom/fusepowered/as/view/vastplayer/VpaidPlayerListener;->onComplete()V

    .line 374
    return-void
.end method

.method public onAdVideoFirstQuartile()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "first quartile!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Vpaid;->getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->FIRST_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 332
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->FIRST_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 334
    return-void
.end method

.method public onAdVideoMidpoint()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "midpoint!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Vpaid;->getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->MID_POINT:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 345
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->MID_POINT:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 347
    return-void
.end method

.method public onAdVideoStart()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad video started!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Vpaid;->getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->START:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 319
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->START:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 321
    return-void
.end method

.method public onAdVideoThirdQuartile()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "third quartile!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    invoke-virtual {v1}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getVpaid()Lcom/fusepowered/as/model/vast/Vpaid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/model/vast/Vpaid;->getCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->THIRD_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 358
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->ad:Lcom/fusepowered/as/model/ad/VASTProviderAd;

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->THIRD_QUARTILE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 360
    return-void
.end method

.method public onGetAdDurationCallback(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 438
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->duration:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 442
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration that was returned back from vpaid creative was not a number"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGetAdRemainingTimeCallback(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->currentTimeMonitor:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :try_start_1
    iget v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->duration:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->currentTime:F

    .line 459
    monitor-exit v1

    .line 466
    :goto_0
    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 461
    :catch_0
    move-exception v0

    .line 463
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remaining time that was returned back from vpaid creative was not a number"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResize()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x2

    .line 486
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/as/view/component/VpaidWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    invoke-virtual {p0}, Lcom/fusepowered/as/view/component/VpaidWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/as/view/component/VpaidWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/as/utils/DisplayUtils;->getActivitySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/DisplayUtils;->convertPointToDip(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 491
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 492
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Size is %dx%d"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v0, "ad.resizeAd(%s, %s, \'normal\');"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fusepowered/as/utils/WebViewJSRunner;->runIt(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vpaid paused!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v0, "ad.pauseAd();"

    invoke-static {p0, v0}, Lcom/fusepowered/as/utils/WebViewJSRunner;->runIt(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 259
    const-string v0, "ad.startAd();"

    invoke-static {p0, v0}, Lcom/fusepowered/as/utils/WebViewJSRunner;->runIt(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/fusepowered/as/view/component/VpaidWebView;->startVideoTimer()V

    .line 262
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vpaid resumed!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v0, "ad.resumeAd();"

    invoke-static {p0, v0}, Lcom/fusepowered/as/utils/WebViewJSRunner;->runIt(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 526
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vpaid stopped!"

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v0, "ad.stopAd();"

    invoke-static {p0, v0}, Lcom/fusepowered/as/utils/WebViewJSRunner;->runIt(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->killedMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/fusepowered/as/view/component/VpaidWebView;->killed:Z

    .line 531
    monitor-exit v1

    .line 533
    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
