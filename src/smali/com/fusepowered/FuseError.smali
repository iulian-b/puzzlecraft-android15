.class public final enum Lcom/fusepowered/FuseError;
.super Ljava/lang/Enum;
.source "FuseError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/FuseError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/FuseError;

.field public static final enum BAD_DATA:Lcom/fusepowered/FuseError;

.field public static final enum INVALID_REQUEST:Lcom/fusepowered/FuseError;

.field public static final enum NONE:Lcom/fusepowered/FuseError;

.field public static final enum NOT_CONNECTED:Lcom/fusepowered/FuseError;

.field public static final enum REQUEST_FAILED:Lcom/fusepowered/FuseError;

.field public static final enum SERVER_ERROR:Lcom/fusepowered/FuseError;

.field public static final enum SESSION_FAILURE:Lcom/fusepowered/FuseError;

.field public static final enum UNDEFINED:Lcom/fusepowered/FuseError;


# instance fields
.field public errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/fusepowered/FuseError;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/fusepowered/FuseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/FuseError;->NONE:Lcom/fusepowered/FuseError;

    .line 9
    new-instance v0, Lcom/fusepowered/FuseError;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/fusepowered/FuseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/FuseError;->NOT_CONNECTED:Lcom/fusepowered/FuseError;

    .line 10
    new-instance v0, Lcom/fusepowered/FuseError;

    const-string v1, "REQUEST_FAILED"

    invoke-direct {v0, v1, v6, v6}, Lcom/fusepowered/FuseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/FuseError;->REQUEST_FAILED:Lcom/fusepowered/FuseError;

    .line 11
    new-instance v0, Lcom/fusepowered/FuseError;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v7, v7}, Lcom/fusepowered/FuseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/FuseError;->SERVER_ERROR:Lcom/fusepowered/FuseError;

    .line 12
    new-instance v0, Lcom/fusepowered/FuseError;

    const-string v1, "BAD_DATA"

    invoke-direct {v0, v1, v8, v8}, Lcom/fusepowered/FuseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/FuseError;->BAD_DATA:Lcom/fusepowered/FuseError;

    .line 13
    new-instance v0, Lcom/fusepowered/FuseError;

    const-string v1, "SESSION_FAILURE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/FuseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/FuseError;->SESSION_FAILURE:Lcom/fusepowered/FuseError;

    .line 14
    new-instance v0, Lcom/fusepowered/FuseError;

    const-string v1, "INVALID_REQUEST"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/FuseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/FuseError;->INVALID_REQUEST:Lcom/fusepowered/FuseError;

    .line 15
    new-instance v0, Lcom/fusepowered/FuseError;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/FuseError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/FuseError;->UNDEFINED:Lcom/fusepowered/FuseError;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/fusepowered/FuseError;

    sget-object v1, Lcom/fusepowered/FuseError;->NONE:Lcom/fusepowered/FuseError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/FuseError;->NOT_CONNECTED:Lcom/fusepowered/FuseError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/FuseError;->REQUEST_FAILED:Lcom/fusepowered/FuseError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/FuseError;->SERVER_ERROR:Lcom/fusepowered/FuseError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fusepowered/FuseError;->BAD_DATA:Lcom/fusepowered/FuseError;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/FuseError;->SESSION_FAILURE:Lcom/fusepowered/FuseError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fusepowered/FuseError;->INVALID_REQUEST:Lcom/fusepowered/FuseError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fusepowered/FuseError;->UNDEFINED:Lcom/fusepowered/FuseError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/FuseError;->$VALUES:[Lcom/fusepowered/FuseError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/fusepowered/FuseError;->errorCode:I

    .line 21
    return-void
.end method

.method public static getErrorByCode(I)Lcom/fusepowered/FuseError;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 24
    packed-switch p0, :pswitch_data_0

    .line 40
    sget-object v0, Lcom/fusepowered/FuseError;->UNDEFINED:Lcom/fusepowered/FuseError;

    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    sget-object v0, Lcom/fusepowered/FuseError;->NONE:Lcom/fusepowered/FuseError;

    goto :goto_0

    .line 28
    :pswitch_1
    sget-object v0, Lcom/fusepowered/FuseError;->NOT_CONNECTED:Lcom/fusepowered/FuseError;

    goto :goto_0

    .line 30
    :pswitch_2
    sget-object v0, Lcom/fusepowered/FuseError;->REQUEST_FAILED:Lcom/fusepowered/FuseError;

    goto :goto_0

    .line 32
    :pswitch_3
    sget-object v0, Lcom/fusepowered/FuseError;->SERVER_ERROR:Lcom/fusepowered/FuseError;

    goto :goto_0

    .line 34
    :pswitch_4
    sget-object v0, Lcom/fusepowered/FuseError;->BAD_DATA:Lcom/fusepowered/FuseError;

    goto :goto_0

    .line 36
    :pswitch_5
    sget-object v0, Lcom/fusepowered/FuseError;->SESSION_FAILURE:Lcom/fusepowered/FuseError;

    goto :goto_0

    .line 38
    :pswitch_6
    sget-object v0, Lcom/fusepowered/FuseError;->INVALID_REQUEST:Lcom/fusepowered/FuseError;

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/FuseError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/fusepowered/FuseError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/FuseError;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/FuseError;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/fusepowered/FuseError;->$VALUES:[Lcom/fusepowered/FuseError;

    invoke-virtual {v0}, [Lcom/fusepowered/FuseError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/FuseError;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    const-string v0, "{ \"FuseError\" : { \"%s\" : %d} }"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/fusepowered/FuseError;->errorCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
