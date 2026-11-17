.class public final enum Lcom/fusepowered/util/FuseCheckAdError;
.super Ljava/lang/Enum;
.source "FuseCheckAdError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/FuseCheckAdError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/FuseCheckAdError;

.field public static final enum CHECKAD_NO_FILL:Lcom/fusepowered/util/FuseCheckAdError;

.field public static final enum CHECKAD_NO_FILL_RTN:Lcom/fusepowered/util/FuseCheckAdError;

.field public static final enum CHECKAD_UNDEFINED:Lcom/fusepowered/util/FuseCheckAdError;

.field public static final enum CHECKAD_WATERFALL_DISABLED:Lcom/fusepowered/util/FuseCheckAdError;

.field public static final enum CHECKAD_WATERFALL_EMPTY:Lcom/fusepowered/util/FuseCheckAdError;

.field public static final enum CHECKAD_WATERFALL_TIMEOUT:Lcom/fusepowered/util/FuseCheckAdError;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/fusepowered/util/FuseCheckAdError;

    const-string v1, "CHECKAD_WATERFALL_TIMEOUT"

    invoke-direct {v0, v1, v4, v4}, Lcom/fusepowered/util/FuseCheckAdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_WATERFALL_TIMEOUT:Lcom/fusepowered/util/FuseCheckAdError;

    .line 5
    new-instance v0, Lcom/fusepowered/util/FuseCheckAdError;

    const-string v1, "CHECKAD_WATERFALL_EMPTY"

    invoke-direct {v0, v1, v5, v5}, Lcom/fusepowered/util/FuseCheckAdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_WATERFALL_EMPTY:Lcom/fusepowered/util/FuseCheckAdError;

    .line 6
    new-instance v0, Lcom/fusepowered/util/FuseCheckAdError;

    const-string v1, "CHECKAD_WATERFALL_DISABLED"

    invoke-direct {v0, v1, v6, v6}, Lcom/fusepowered/util/FuseCheckAdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_WATERFALL_DISABLED:Lcom/fusepowered/util/FuseCheckAdError;

    .line 7
    new-instance v0, Lcom/fusepowered/util/FuseCheckAdError;

    const-string v1, "CHECKAD_NO_FILL"

    invoke-direct {v0, v1, v7, v7}, Lcom/fusepowered/util/FuseCheckAdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_NO_FILL:Lcom/fusepowered/util/FuseCheckAdError;

    .line 8
    new-instance v0, Lcom/fusepowered/util/FuseCheckAdError;

    const-string v1, "CHECKAD_NO_FILL_RTN"

    invoke-direct {v0, v1, v8, v8}, Lcom/fusepowered/util/FuseCheckAdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_NO_FILL_RTN:Lcom/fusepowered/util/FuseCheckAdError;

    .line 9
    new-instance v0, Lcom/fusepowered/util/FuseCheckAdError;

    const-string v1, "CHECKAD_UNDEFINED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/FuseCheckAdError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_UNDEFINED:Lcom/fusepowered/util/FuseCheckAdError;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fusepowered/util/FuseCheckAdError;

    sget-object v1, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_WATERFALL_TIMEOUT:Lcom/fusepowered/util/FuseCheckAdError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_WATERFALL_EMPTY:Lcom/fusepowered/util/FuseCheckAdError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_WATERFALL_DISABLED:Lcom/fusepowered/util/FuseCheckAdError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_NO_FILL:Lcom/fusepowered/util/FuseCheckAdError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_NO_FILL_RTN:Lcom/fusepowered/util/FuseCheckAdError;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/util/FuseCheckAdError;->CHECKAD_UNDEFINED:Lcom/fusepowered/util/FuseCheckAdError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/util/FuseCheckAdError;->$VALUES:[Lcom/fusepowered/util/FuseCheckAdError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/fusepowered/util/FuseCheckAdError;->id:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/FuseCheckAdError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/util/FuseCheckAdError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/util/FuseCheckAdError;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/util/FuseCheckAdError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/util/FuseCheckAdError;->$VALUES:[Lcom/fusepowered/util/FuseCheckAdError;

    invoke-virtual {v0}, [Lcom/fusepowered/util/FuseCheckAdError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/FuseCheckAdError;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 18
    const-string v0, "{ \"FuseCheckAdError\" : { \"%s\" : %d} }"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/fusepowered/util/FuseCheckAdError;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
