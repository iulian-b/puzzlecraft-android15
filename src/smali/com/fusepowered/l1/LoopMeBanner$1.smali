.class Lcom/fusepowered/l1/LoopMeBanner$1;
.super Ljava/lang/Object;
.source "LoopMeBanner.java"

# interfaces
.implements Lcom/fusepowered/l1/tasks/AdvIdFetcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/LoopMeBanner;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/LoopMeBanner;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/LoopMeBanner;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/fusepowered/l1/LoopMeBanner$1;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "advId"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner$1;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    iget-object v0, v0, Lcom/fusepowered/l1/LoopMeBanner;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/fusepowered/l1/IdentityProvider;->getInstance(Landroid/content/Context;)Lcom/fusepowered/l1/IdentityProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/l1/IdentityProvider;->setGoogleAdvertisingId(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/fusepowered/l1/LoopMeBanner$1;->this$0:Lcom/fusepowered/l1/LoopMeBanner;

    invoke-virtual {v0}, Lcom/fusepowered/l1/LoopMeBanner;->fetchAd()V

    .line 111
    return-void
.end method
