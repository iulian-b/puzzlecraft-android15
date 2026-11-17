.class Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;
.super Ljava/lang/Object;
.source "MonetizationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/MonetizationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlacementFetchSet"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field adEventListener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

.field placementName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "a"    # Landroid/app/Activity;
    .param p3, "l"    # Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;->placementName:Ljava/lang/String;

    iput-object p2, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;->activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/fusepowered/nx/monetization/MonetizationManager$PlacementFetchSet;->adEventListener:Lcom/fusepowered/nx/monetization/listeners/OnAdEventBase;

    return-void
.end method
