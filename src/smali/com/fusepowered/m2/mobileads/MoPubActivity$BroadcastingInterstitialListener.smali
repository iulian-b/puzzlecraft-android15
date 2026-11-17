.class Lcom/fusepowered/m2/mobileads/MoPubActivity$BroadcastingInterstitialListener;
.super Ljava/lang/Object;
.source "MoPubActivity.java"

# interfaces
.implements Lcom/fusepowered/m2/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/mobileads/M2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BroadcastingInterstitialListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/M2Activity;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/M2Activity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/MoPubActivity$BroadcastingInterstitialListener;->this$0:Lcom/fusepowered/m2/mobileads/M2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubActivity$BroadcastingInterstitialListener;->this$0:Lcom/fusepowered/m2/mobileads/M2Activity;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubActivity$BroadcastingInterstitialListener;->this$0:Lcom/fusepowered/m2/mobileads/M2Activity;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/M2Activity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, "com.fusepowered.m2.action.interstitial.click"

    invoke-static {v0, v2, v3, v1}, Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 145
    return-void
.end method

.method public onInterstitialDismissed()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onInterstitialFailed(Lcom/fusepowered/m2/mobileads/MoPubErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/fusepowered/m2/mobileads/MoPubErrorCode;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubActivity$BroadcastingInterstitialListener;->this$0:Lcom/fusepowered/m2/mobileads/M2Activity;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/MoPubActivity$BroadcastingInterstitialListener;->this$0:Lcom/fusepowered/m2/mobileads/M2Activity;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/M2Activity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v1, "com.fusepowered.m2.action.interstitial.fail"

    invoke-static {v0, v2, v3, v1}, Lcom/fusepowered/m2/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubActivity$BroadcastingInterstitialListener;->this$0:Lcom/fusepowered/m2/mobileads/M2Activity;

    invoke-virtual {v0}, Lcom/fusepowered/m2/mobileads/M2Activity;->finish()V

    .line 136
    return-void
.end method

.method public onInterstitialLoaded()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/MoPubActivity$BroadcastingInterstitialListener;->this$0:Lcom/fusepowered/m2/mobileads/M2Activity;

    invoke-static {v0}, Lcom/fusepowered/m2/mobileads/M2Activity;->access$000(Lcom/fusepowered/m2/mobileads/M2Activity;)Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/mobileads/HtmlInterstitialWebView;->loadUrl(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onInterstitialShown()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onLeaveApplication()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method
