.class Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$3;
.super Ljava/util/TimerTask;
.source "ASAdColonyInterstitialProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->requestAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

.field final synthetic val$listener:Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$3;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    iput-object p2, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$3;->val$listener:Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 192
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$3;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v1}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$200(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Partner ad failed to load."

    invoke-static {v0, v1}, Lcom/fusepowered/as/utils/AerServLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$3;->val$listener:Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->removeAdAvailabilityListener(Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V

    .line 195
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$3;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$3;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 199
    :cond_0
    return-void
.end method
