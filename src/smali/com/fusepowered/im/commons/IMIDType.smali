.class public final enum Lcom/fusepowered/im/commons/IMIDType;
.super Ljava/lang/Enum;
.source "IMIDType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/im/commons/IMIDType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ID_LOGIN:Lcom/fusepowered/im/commons/IMIDType;

.field public static final enum ID_SESSION:Lcom/fusepowered/im/commons/IMIDType;

.field private static final synthetic a:[Lcom/fusepowered/im/commons/IMIDType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/fusepowered/im/commons/IMIDType;

    const-string v1, "ID_LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/im/commons/IMIDType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/commons/IMIDType;->ID_LOGIN:Lcom/fusepowered/im/commons/IMIDType;

    .line 16
    new-instance v0, Lcom/fusepowered/im/commons/IMIDType;

    const-string v1, "ID_SESSION"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/im/commons/IMIDType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/im/commons/IMIDType;->ID_SESSION:Lcom/fusepowered/im/commons/IMIDType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/im/commons/IMIDType;

    sget-object v1, Lcom/fusepowered/im/commons/IMIDType;->ID_LOGIN:Lcom/fusepowered/im/commons/IMIDType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/im/commons/IMIDType;->ID_SESSION:Lcom/fusepowered/im/commons/IMIDType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/im/commons/IMIDType;->a:[Lcom/fusepowered/im/commons/IMIDType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/im/commons/IMIDType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/fusepowered/im/commons/IMIDType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/im/commons/IMIDType;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/im/commons/IMIDType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/fusepowered/im/commons/IMIDType;->a:[Lcom/fusepowered/im/commons/IMIDType;

    invoke-virtual {v0}, [Lcom/fusepowered/im/commons/IMIDType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/im/commons/IMIDType;

    return-object v0
.end method
