.class Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseResponseData;
.super Ljava/lang/Object;
.source "InAppPurchaseResponseData.java"


# instance fields
.field private log:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Log"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/Message;",
            ">;"
        }
    .end annotation
.end field

.field private successful:Ljava/lang/Boolean;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "IsSuccessful"
    .end annotation
.end field

.field private violations:Ljava/util/List;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Violations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fusepowered/nx/common/Violation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccessful()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fusepowered/nx/common/billingtracking/InAppPurchaseResponseData;->successful:Ljava/lang/Boolean;

    return-object v0
.end method
