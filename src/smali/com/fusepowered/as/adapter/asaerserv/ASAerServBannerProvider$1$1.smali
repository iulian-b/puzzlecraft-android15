.class Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;
.super Ljava/lang/Object;
.source "ASAerServBannerProvider.java"

# interfaces
.implements Lcom/fusepowered/as/view/vastplayer/VastPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;->this$1:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;->this$1:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;

    iget-object v0, v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$300(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;->this$1:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;

    iget-object v0, v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$300(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->kill()V

    .line 101
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;->this$1:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;

    iget-object v0, v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$302(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;Lcom/fusepowered/as/view/vastplayer/VastPlayer;)Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;->this$1:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;

    iget-object v0, v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$100(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 106
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;->this$1:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;

    iget-object v0, v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 107
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;->this$1:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;

    iget-object v0, v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getControllerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 84
    return-void
.end method

.method public onShowClose()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;->this$1:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;

    iget-object v0, v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getControllerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->VIDEO_COMPLETED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 89
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;->this$1:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;

    iget-object v0, v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFinished()V

    .line 90
    return-void
.end method

.method public onTouch()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;->this$1:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;

    iget-object v0, v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getControllerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_CLICKED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 95
    return-void
.end method

.method public onVideoViewCreated(Landroid/widget/VideoView;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1$1;->this$1:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;

    iget-object v0, v0, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider$1;->this$0:Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;->access$000(Lcom/fusepowered/as/adapter/asaerserv/ASAerServBannerProvider;)Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/adapter/asaerserv/ASAerServConfig;->getProviderListener()Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onVideoViewCreated(Landroid/widget/VideoView;)V

    .line 79
    return-void
.end method
