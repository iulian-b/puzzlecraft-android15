.class Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider$1;
.super Ljava/lang/Object;
.source "ASSpecificMediaInterstitialProvider.java"

# interfaces
.implements Lcom/vindicogroup/android/vindico/Vindico$IAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;->requestAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdAvailable(Lcom/vindicogroup/android/vindico/AdFacade;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;)Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/vindicogroup/android/vindico/AdFacade;->renderAsInterstitial(Landroid/content/Context;Ljava/util/EnumSet;)V

    .line 62
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;)Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    .line 63
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;)Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getControllerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 65
    return-void
.end method

.method public onAdUnavailable()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;)Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 56
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaInterstitialProvider;)Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asspecificmedia/ASSpecificMediaConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 71
    return-void
.end method
