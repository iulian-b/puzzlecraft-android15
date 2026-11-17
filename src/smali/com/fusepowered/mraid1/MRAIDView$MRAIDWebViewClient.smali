.class Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/mraid1/MRAIDView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRAIDWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/mraid1/MRAIDView;


# direct methods
.method private constructor <init>(Lcom/fusepowered/mraid1/MRAIDView;)V
    .locals 0

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/mraid1/MRAIDView;Lcom/fusepowered/mraid1/MRAIDView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/mraid1/MRAIDView;
    .param p2, "x1"    # Lcom/fusepowered/mraid1/MRAIDView$1;

    .prologue
    .line 1174
    invoke-direct {p0, p1}, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;-><init>(Lcom/fusepowered/mraid1/MRAIDView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1178
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$900(Lcom/fusepowered/mraid1/MRAIDView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0, v3}, Lcom/fusepowered/mraid1/MRAIDView;->access$2702(Lcom/fusepowered/mraid1/MRAIDView;Z)Z

    .line 1182
    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setPlacementType(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$400(Lcom/fusepowered/mraid1/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "interstitial"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\');"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2800(Lcom/fusepowered/mraid1/MRAIDView;Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2900(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1184
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2600(Lcom/fusepowered/mraid1/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$3000(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1186
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$3100(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1187
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$3200(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1188
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$3300(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1189
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0, v3}, Lcom/fusepowered/mraid1/MRAIDView;->access$902(Lcom/fusepowered/mraid1/MRAIDView;I)I

    .line 1190
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2200(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1191
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$3400(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1192
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$3500(Lcom/fusepowered/mraid1/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$3600(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2300(Lcom/fusepowered/mraid1/MRAIDView;)Lcom/fusepowered/mraid1/MRAIDViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2300(Lcom/fusepowered/mraid1/MRAIDView;)Lcom/fusepowered/mraid1/MRAIDViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-interface {v0, v1}, Lcom/fusepowered/mraid1/MRAIDViewListener;->mraidViewLoaded(Lcom/fusepowered/mraid1/MRAIDView;)V

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$2000(Lcom/fusepowered/mraid1/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1201
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$2002(Lcom/fusepowered/mraid1/MRAIDView;Z)Z

    .line 1202
    iget-object v0, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v0}, Lcom/fusepowered/mraid1/MRAIDView;->access$3700(Lcom/fusepowered/mraid1/MRAIDView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient$1;-><init>(Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1218
    :cond_2
    return-void

    .line 1182
    :cond_3
    const-string v0, "inline"

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 1222
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1228
    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fusepowered/mraid1/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const-string v1, "mraid://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1230
    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1, p2}, Lcom/fusepowered/mraid1/MRAIDView;->access$3800(Lcom/fusepowered/mraid1/MRAIDView;Ljava/lang/String;)V

    .line 1248
    :cond_0
    :goto_0
    return v0

    .line 1232
    :cond_1
    const-string v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1233
    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$3900(Lcom/fusepowered/mraid1/MRAIDView;)Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$4000(Lcom/fusepowered/mraid1/MRAIDView;)Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;->isSmsSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1234
    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$3900(Lcom/fusepowered/mraid1/MRAIDView;)Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;->mraidNativeFeatureSendSms(Ljava/lang/String;)V

    goto :goto_0

    .line 1237
    :cond_2
    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1238
    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$3900(Lcom/fusepowered/mraid1/MRAIDView;)Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$4000(Lcom/fusepowered/mraid1/MRAIDView;)Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/mraid1/internal/MRAIDNativeFeatureManager;->isTelSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1239
    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$3900(Lcom/fusepowered/mraid1/MRAIDView;)Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;->mraidNativeFeatureCallTel(Ljava/lang/String;)V

    goto :goto_0

    .line 1242
    :cond_3
    const-string v1, "market:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1243
    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$3900(Lcom/fusepowered/mraid1/MRAIDView;)Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1244
    iget-object v1, p0, Lcom/fusepowered/mraid1/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/fusepowered/mraid1/MRAIDView;

    invoke-static {v1}, Lcom/fusepowered/mraid1/MRAIDView;->access$3900(Lcom/fusepowered/mraid1/MRAIDView;)Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/fusepowered/mraid1/MRAIDNativeFeatureListener;->mraidNativeFeatureOpenMarket(Ljava/lang/String;)V

    goto :goto_0

    .line 1248
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
