.class Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider$1;
.super Ljava/lang/Object;
.source "ASSpecificMediaBannerProvider.java"

# interfaces
.implements Lcom/vindicogroup/android/vindico/Vindico$IAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->requestAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdAvailable(Lcom/vindicogroup/android/vindico/AdFacade;)V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lcom/fusepowered/as/view/component/ASWebView;

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;

    invoke-static {v1}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;)Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/view/component/ASWebView;-><init>(Landroid/content/Context;)V

    .line 78
    iget-object v1, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;

    invoke-static {v1}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->access$100(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p1}, Lcom/vindicogroup/android/vindico/AdFacade;->getAdResponse()Lcom/vindico/common/AdResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vindico/common/AdResponse;->getAd()Lcom/vindico/common/AbstractAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vindico/common/AbstractAd;->getPayload()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v2, v3}, Lcom/fusepowered/as/view/component/ASWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;)Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    .line 82
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;)Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getControllerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 84
    return-void
.end method

.method public onAdUnavailable()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;)Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 71
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaBannerProvider;)Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 90
    return-void
.end method
