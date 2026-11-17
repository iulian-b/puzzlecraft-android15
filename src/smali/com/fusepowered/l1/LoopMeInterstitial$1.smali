.class Lcom/fusepowered/l1/LoopMeInterstitial$1;
.super Ljava/lang/Object;
.source "LoopMeInterstitial.java"

# interfaces
.implements Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeInterstitial;->proceedLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/LoopMeInterstitial;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/LoopMeInterstitial;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeInterstitial$1;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "advId"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$1;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    iget-object v0, v0, Lcom/fusepowered/l1/LoopMeInterstitial;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/fusepowered/l1/IdentityProvider;->getInstance(Landroid/content/Context;)Lcom/fusepowered/l1/IdentityProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/l1/IdentityProvider;->setGoogleAdvertisingId(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeInterstitial$1;->this$0:Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeInterstitial;->fetchAd()V

    .line 131
    return-void
.end method
