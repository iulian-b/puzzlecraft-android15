.class Lcom/fusepowered/as/view/ASVastInterstitialActivity$2;
.super Ljava/lang/Object;
.source "ASVastInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/view/ASVastInterstitialActivity;->registerEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$2;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 149
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$2;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    invoke-static {v1}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->access$200(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->getCurrentCreative()Lcom/fusepowered/as/model/vast/LinearCreative;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->CLOSE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/vast/LinearCreative;->getTrackingEventsByEventType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 150
    new-instance v0, Lcom/fusepowered/as/controller/command/FireEventCommand;

    iget-object v1, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$2;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    invoke-static {v1}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->access$200(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->getAd()Lcom/fusepowered/as/model/ad/VASTProviderAd;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/as/model/vast/EventType;->CLOSE:Lcom/fusepowered/as/model/vast/EventType;

    invoke-virtual {v1, v2}, Lcom/fusepowered/as/model/ad/VASTProviderAd;->getAllWrapperLinearCreativeTrackingEventsByType(Lcom/fusepowered/as/model/vast/EventType;)Lcom/fusepowered/as/model/vast/TrackingEvents;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fusepowered/as/controller/command/FireEventCommand;-><init>(Lcom/fusepowered/as/model/vast/TrackingEvents;)V

    invoke-virtual {v0}, Lcom/fusepowered/as/controller/command/FireEventCommand;->execute()V

    .line 151
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$2;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    iget-object v0, v0, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->controllerId:Ljava/lang/String;

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_DISMISSED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 152
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$2;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    invoke-static {v0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->access$200(Lcom/fusepowered/as/view/ASVastInterstitialActivity;)Lcom/fusepowered/as/view/vastplayer/VastPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/as/view/vastplayer/VastPlayer;->close()V

    .line 153
    iget-object v0, p0, Lcom/fusepowered/as/view/ASVastInterstitialActivity$2;->this$0:Lcom/fusepowered/as/view/ASVastInterstitialActivity;

    invoke-virtual {v0}, Lcom/fusepowered/as/view/ASVastInterstitialActivity;->finish()V

    .line 154
    return-void
.end method
