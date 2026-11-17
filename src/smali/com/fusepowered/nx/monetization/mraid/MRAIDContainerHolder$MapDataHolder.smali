.class Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;
.super Ljava/lang/Object;
.source "MRAIDContainerHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapDataHolder"
.end annotation


# instance fields
.field cached:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

.field shown:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainer;

.field final synthetic this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder$MapDataHolder;->this$0:Lcom/fusepowered/nx/monetization/mraid/MRAIDContainerHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
