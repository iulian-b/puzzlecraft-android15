.class public final enum Lcom/fusepowered/l1/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/l1/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/l1/LogLevel;

.field public static final enum DEBUG:Lcom/fusepowered/l1/LogLevel;

.field public static final enum ERROR:Lcom/fusepowered/l1/LogLevel;

.field public static final enum INFO:Lcom/fusepowered/l1/LogLevel;


# instance fields
.field mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5
    new-instance v0, Lcom/fusepowered/l1/LogLevel;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/l1/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    .line 6
    new-instance v0, Lcom/fusepowered/l1/LogLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/l1/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    .line 7
    new-instance v0, Lcom/fusepowered/l1/LogLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3, v5}, Lcom/fusepowered/l1/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    .line 3
    new-array v0, v5, [Lcom/fusepowered/l1/LogLevel;

    sget-object v1, Lcom/fusepowered/l1/LogLevel;->INFO:Lcom/fusepowered/l1/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/l1/LogLevel;->ERROR:Lcom/fusepowered/l1/LogLevel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/l1/LogLevel;->$VALUES:[Lcom/fusepowered/l1/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/fusepowered/l1/LogLevel;->mLevel:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/l1/LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/l1/LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/l1/LogLevel;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/l1/LogLevel;->$VALUES:[Lcom/fusepowered/l1/LogLevel;

    invoke-virtual {v0}, [Lcom/fusepowered/l1/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/l1/LogLevel;

    return-object v0
.end method
