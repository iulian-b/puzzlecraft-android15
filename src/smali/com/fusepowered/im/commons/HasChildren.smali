.class public final enum Lcom/fusepowered/im/commons/HasChildren;
.super Ljava/lang/Enum;
.source "HasChildren.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/im/commons/HasChildren;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FALSE:Lcom/fusepowered/im/commons/HasChildren;

.field public static final enum TRUE:Lcom/fusepowered/im/commons/HasChildren;

.field public static final enum UNKNOWN:Lcom/fusepowered/im/commons/HasChildren;

.field private static final synthetic a:[Lcom/fusepowered/im/commons/HasChildren;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/fusepowered/im/commons/HasChildren;

    const-string v1, "TRUE"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/im/commons/HasChildren;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/commons/HasChildren;->TRUE:Lcom/fusepowered/im/commons/HasChildren;

    new-instance v0, Lcom/fusepowered/im/commons/HasChildren;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/im/commons/HasChildren;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/commons/HasChildren;->FALSE:Lcom/fusepowered/im/commons/HasChildren;

    new-instance v0, Lcom/fusepowered/im/commons/HasChildren;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/im/commons/HasChildren;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/commons/HasChildren;->UNKNOWN:Lcom/fusepowered/im/commons/HasChildren;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/im/commons/HasChildren;

    sget-object v1, Lcom/fusepowered/im/commons/HasChildren;->TRUE:Lcom/fusepowered/im/commons/HasChildren;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/im/commons/HasChildren;->FALSE:Lcom/fusepowered/im/commons/HasChildren;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/im/commons/HasChildren;->UNKNOWN:Lcom/fusepowered/im/commons/HasChildren;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/im/commons/HasChildren;->a:[Lcom/fusepowered/im/commons/HasChildren;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/im/commons/HasChildren;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/fusepowered/im/commons/HasChildren;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/im/commons/HasChildren;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/im/commons/HasChildren;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/fusepowered/im/commons/HasChildren;->a:[Lcom/fusepowered/im/commons/HasChildren;

    invoke-virtual {v0}, [Lcom/fusepowered/im/commons/HasChildren;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/im/commons/HasChildren;

    return-object v0
.end method
