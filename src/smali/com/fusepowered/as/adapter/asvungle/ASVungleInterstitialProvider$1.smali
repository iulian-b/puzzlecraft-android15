.class Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider$1;
.super Ljava/lang/Object;
.source "ASVungleInterstitialProvider.java"

# interfaces
.implements Lcom/vungle/publisher/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->requestAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdEnd()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_COMPLETED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 142
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFinished()V

    .line 143
    return-void
.end method

.method public onAdStart()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderImpression()V

    .line 131
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 132
    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 137
    return-void
.end method

.method public onCachedAdAvailable()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->access$200(Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->access$202(Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;Z)Z

    .line 149
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;

    iget-object v0, v0, Lcom/fusepowered/as/adapter/asvungle/ASVungleInterstitialProvider;->vunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->playAd()V

    .line 151
    :cond_0
    return-void
.end method

.method public onVideoView(ZII)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method
