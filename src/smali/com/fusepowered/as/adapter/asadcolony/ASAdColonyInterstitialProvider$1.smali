.class Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$1;
.super Ljava/lang/Object;
.source "ASAdColonyInterstitialProvider.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->showAd()V
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
    .line 138
    iput-object p1, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->noFill()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$000(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Lcom/fusepowered/as/controller/listener/ProviderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/as/controller/listener/ProviderListener;->onProviderFailure()V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_COMPLETED:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    goto :goto_0
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->VIDEO_START:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 153
    iget-object v0, p0, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider$1;->this$0:Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;

    invoke-static {v0}, Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;->access$100(Lcom/fusepowered/as/adapter/asadcolony/ASAdColonyInterstitialProvider;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/as/AerServEvent;->AD_IMPRESSION:Lcom/fusepowered/as/AerServEvent;

    invoke-static {v0, v1}, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;)V

    .line 155
    return-void
.end method
