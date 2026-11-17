.class public final enum Lcom/fusepowered/im/commons/MaritalStatus;
.super Ljava/lang/Enum;
.source "MaritalStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/im/commons/MaritalStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIVORCED:Lcom/fusepowered/im/commons/MaritalStatus;

.field public static final enum ENGAGED:Lcom/fusepowered/im/commons/MaritalStatus;

.field public static final enum RELATIONSHIP:Lcom/fusepowered/im/commons/MaritalStatus;

.field public static final enum SINGLE:Lcom/fusepowered/im/commons/MaritalStatus;

.field public static final enum UNKNOWN:Lcom/fusepowered/im/commons/MaritalStatus;

.field private static final synthetic a:[Lcom/fusepowered/im/commons/MaritalStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/fusepowered/im/commons/MaritalStatus;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/im/commons/MaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/commons/MaritalStatus;->SINGLE:Lcom/fusepowered/im/commons/MaritalStatus;

    new-instance v0, Lcom/fusepowered/im/commons/MaritalStatus;

    const-string v1, "RELATIONSHIP"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/im/commons/MaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/commons/MaritalStatus;->RELATIONSHIP:Lcom/fusepowered/im/commons/MaritalStatus;

    new-instance v0, Lcom/fusepowered/im/commons/MaritalStatus;

    const-string v1, "ENGAGED"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/im/commons/MaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/commons/MaritalStatus;->ENGAGED:Lcom/fusepowered/im/commons/MaritalStatus;

    new-instance v0, Lcom/fusepowered/im/commons/MaritalStatus;

    const-string v1, "DIVORCED"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/im/commons/MaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/commons/MaritalStatus;->DIVORCED:Lcom/fusepowered/im/commons/MaritalStatus;

    new-instance v0, Lcom/fusepowered/im/commons/MaritalStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/fusepowered/im/commons/MaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/commons/MaritalStatus;->UNKNOWN:Lcom/fusepowered/im/commons/MaritalStatus;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fusepowered/im/commons/MaritalStatus;

    sget-object v1, Lcom/fusepowered/im/commons/MaritalStatus;->SINGLE:Lcom/fusepowered/im/commons/MaritalStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/im/commons/MaritalStatus;->RELATIONSHIP:Lcom/fusepowered/im/commons/MaritalStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/im/commons/MaritalStatus;->ENGAGED:Lcom/fusepowered/im/commons/MaritalStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/im/commons/MaritalStatus;->DIVORCED:Lcom/fusepowered/im/commons/MaritalStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/im/commons/MaritalStatus;->UNKNOWN:Lcom/fusepowered/im/commons/MaritalStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fusepowered/im/commons/MaritalStatus;->a:[Lcom/fusepowered/im/commons/MaritalStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/im/commons/MaritalStatus;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/fusepowered/im/commons/MaritalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/im/commons/MaritalStatus;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/im/commons/MaritalStatus;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/fusepowered/im/commons/MaritalStatus;->a:[Lcom/fusepowered/im/commons/MaritalStatus;

    invoke-virtual {v0}, [Lcom/fusepowered/im/commons/MaritalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/im/commons/MaritalStatus;

    return-object v0
.end method
