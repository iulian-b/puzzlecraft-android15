.class public Lcom/fusepowered/nx/monetization/business/ActionTakenRequestData;
.super Ljava/lang/Object;
.source "ActionTakenRequestData.java"


# instance fields
.field private actionId:Ljava/lang/Integer;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "ActionId"
    .end annotation
.end field

.field private isHacked:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "IsHacked"
    .end annotation
.end field

.field private udids:Lcom/fusepowered/nx/common/UDIDs;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "UDIDs"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActionId(I)V
    .locals 1
    .param p1, "actionId"    # I

    .prologue
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/nx/monetization/business/ActionTakenRequestData;->actionId:Ljava/lang/Integer;

    .line 52
    return-void
.end method

.method public setIsHacked(Ljava/lang/String;)V
    .locals 0
    .param p1, "isFirstRun"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/ActionTakenRequestData;->isHacked:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUdids(Lcom/fusepowered/nx/common/UDIDs;)V
    .locals 2
    .param p1, "udids"    # Lcom/fusepowered/nx/common/UDIDs;

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "UDIDs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/business/ActionTakenRequestData;->udids:Lcom/fusepowered/nx/common/UDIDs;

    .line 47
    return-void
.end method
