.class Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$2;
.super Ljava/lang/Object;
.source "ASAdColonyInterstitialProvider.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;


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


# direct methods
.method constructor <init>(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$2;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdColonyAdAvailabilityChange(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$2;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$202(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 173
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$2;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$200(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$2;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$300(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$2;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$400(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$2;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$200(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$2;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$300(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$2;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->PRELOAD_READY:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    goto :goto_0

    .line 178
    :cond_2
    if-nez p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$2;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 180
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$2;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$202(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0
.end method
