.class public Lcom/fusepowered/nx/common/UDIDs$UDID;
.super Ljava/lang/Object;
.source "UDIDs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/common/UDIDs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UDID"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/common/UDIDs;

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Type"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/fusepowered/nx/gson/annotations/SerializedName;
        value = "Value"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/common/UDIDs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/common/UDIDs;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fusepowered/nx/common/UDIDs$UDID;->this$0:Lcom/fusepowered/nx/common/UDIDs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/fusepowered/nx/common/UDIDs$UDID;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/common/UDIDs$UDID;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fusepowered/nx/common/UDIDs$UDID;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/fusepowered/nx/common/UDIDs$UDID;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/nx/common/UDIDs$UDID;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fusepowered/nx/common/UDIDs$UDID;->value:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 76
    instance-of v2, p1, Lcom/fusepowered/nx/common/UDIDs$UDID;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 77
    check-cast v0, Lcom/fusepowered/nx/common/UDIDs$UDID;

    .line 78
    .local v0, "udid":Lcom/fusepowered/nx/common/UDIDs$UDID;
    iget-object v2, v0, Lcom/fusepowered/nx/common/UDIDs$UDID;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/nx/common/UDIDs$UDID;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    .end local v0    # "udid":Lcom/fusepowered/nx/common/UDIDs$UDID;
    :cond_0
    :goto_0
    return v1

    .line 81
    .restart local v0    # "udid":Lcom/fusepowered/nx/common/UDIDs$UDID;
    :cond_1
    iget-object v2, v0, Lcom/fusepowered/nx/common/UDIDs$UDID;->value:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/nx/common/UDIDs$UDID;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const/4 v1, 0x1

    goto :goto_0
.end method
