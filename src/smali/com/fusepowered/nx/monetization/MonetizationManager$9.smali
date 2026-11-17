.class final Lcom/fusepowered/nx/monetization/MonetizationManager$9;
.super Ljava/lang/Object;
.source "MonetizationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/monetization/MonetizationManager;->onStatelessCreateSessionCompleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fetchEntry:Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;)V
    .locals 0

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$9;->val$fetchEntry:Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$9;->val$fetchEntry:Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$9;->val$fetchEntry:Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;

    iget-object v1, v1, Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;->placementName:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$9;->val$fetchEntry:Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;

    iget-object v2, v2, Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;->adEventListener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDManager;->cacheInterstitial(Landroid/app/Activity;Ljava/lang/String;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)Z

    .line 1083
    return-void
.end method
