.class public Lcom/fusepowered/ads/adapters/LoopMeAdAdapter$LoopMeFactory;
.super Ljava/lang/Object;
.source "LoopMeAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/ads/adapters/LoopMeAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoopMeFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInterstitial(Landroid/app/Activity;Ljava/lang/String;)Lcom/fusepowered/l1/LoopMeInterstitial;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v0, Lcom/fusepowered/l1/LoopMeInterstitial;

    invoke-direct {v0, p1, p2}, Lcom/fusepowered/l1/LoopMeInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method
