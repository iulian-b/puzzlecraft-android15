.class Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;
.super Ljava/lang/Object;
.source "ASAerServBannerProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->requestAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getProviderAd()Lcom/fusepowered/as/model/ad/ProviderAd;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/fusepowered/as/model/ad/ProviderAd;->getAdType()Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/ad/AdType;->HTML:Lcom/fusepowered/as/model/ad/AdType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/AdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    new-instance v1, Lcom/fusepowered/as/view/component/ASWebView;

    iget-object v2, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v2}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fusepowered/as/view/component/ASWebView;-><init>(Landroid/content/Context;)V

    .line 63
    iget-object v2, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v2}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/view/component/ASWebView;->registerProviderListener(Lcom/fusepowered/as/controller/listener/ProviderListener;)V

    .line 64
    iget-object v2, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v2}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$100(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    check-cast v0, Lcom/fusepowered/as/model/ad/HTMLProviderAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/HTMLProviderAd;->getHTML()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v0, v2, v3}, Lcom/fusepowered/as/view/component/ASWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderAttempt()V

    .line 122
    return-void

    .line 67
    :cond_1
    invoke-interface {v0}, Lcom/fusepowered/as/model/ad/ProviderAd;->getAdType()Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/ad/AdType;->MRAID:Lcom/fusepowered/as/model/ad/AdType;

    if-ne v1, v2, :cond_2

    .line 68
    new-instance v1, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;

    iget-object v2, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v2}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v3}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$200(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Ljava/util/Properties;

    move-result-object v3

    iget-object v4, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v4}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fusepowered/as/controller/listener/MraidBannerJavascriptInterfaceListener;-><init>(Landroid/content/Context;Ljava/util/Properties;Lcom/fusepowered/as/controller/listener/ProviderListener;Lcom/fusepowered/as/controller/listener/SetVisibilityListener;)V

    .line 69
    new-instance v2, Lcom/fusepowered/as/view/component/ASMraidWebView;

    iget-object v3, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v3}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/fusepowered/as/view/component/ASMraidWebView;-><init>(Landroid/content/Context;Lcom/fusepowered/as/controller/listener/MraidJavascriptInterfaceListener;)V

    .line 70
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v1}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$100(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    check-cast v0, Lcom/fusepowered/as/model/ad/HTMLProviderAd;

    invoke-virtual {v0}, Lcom/fusepowered/as/model/ad/HTMLProviderAd;->getHTML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v0, v1, v3}, Lcom/fusepowered/as/view/component/ASMraidWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-interface {v0}, Lcom/fusepowered/as/model/ad/ProviderAd;->getAdType()Lcom/fusepowered/as/model/ad/AdType;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/ad/AdType;->VAST:Lcom/fusepowered/as/model/ad/AdType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/AdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    new-instance v2, Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    iget-object v3, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v3}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v0, Lcom/fusepowered/as/model/ad/VASTProviderAd;

    new-instance v4, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;

    invoke-direct {v4, p0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;-><init>(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;)V

    invoke-direct {v2, v3, v0, v4}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;-><init>(Landroid/content/Context;Lcom/fusepowered/as/model/ad/VASTProviderAd;Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;)V

    invoke-static {v1, v2}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$302(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    .line 115
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$100(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v1}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$300(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->getMasterFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$300(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->play()V

    goto/16 :goto_0
.end method
