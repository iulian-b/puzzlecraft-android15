.class public final enum Lcom/fusepowered/util/AccountType;
.super Ljava/lang/Enum;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/AccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/AccountType;

.field public static final enum FUSE_DEVICE_ID:Lcom/fusepowered/util/AccountType;

.field public static final enum FUSE_EMAIL:Lcom/fusepowered/util/AccountType;

.field public static final enum FUSE_FACEBOOK:Lcom/fusepowered/util/AccountType;

.field public static final enum FUSE_GAMECENTER:Lcom/fusepowered/util/AccountType;

.field public static final enum FUSE_GOOGLE_PLAY:Lcom/fusepowered/util/AccountType;

.field public static final enum FUSE_OPENFEINT:Lcom/fusepowered/util/AccountType;

.field public static final enum FUSE_TWITTER:Lcom/fusepowered/util/AccountType;

.field public static final enum FUSE_USER:Lcom/fusepowered/util/AccountType;

.field public static final enum NONE:Lcom/fusepowered/util/AccountType;


# instance fields
.field private accountNumber:I


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
    new-instance v0, Lcom/fusepowered/util/AccountType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/fusepowered/util/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/AccountType;->NONE:Lcom/fusepowered/util/AccountType;

    .line 9
    new-instance v0, Lcom/fusepowered/util/AccountType;

    const-string v1, "FUSE_GAMECENTER"

    invoke-direct {v0, v1, v5, v5}, Lcom/fusepowered/util/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/AccountType;->FUSE_GAMECENTER:Lcom/fusepowered/util/AccountType;

    .line 10
    new-instance v0, Lcom/fusepowered/util/AccountType;

    const-string v1, "FUSE_FACEBOOK"

    invoke-direct {v0, v1, v6, v6}, Lcom/fusepowered/util/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/AccountType;->FUSE_FACEBOOK:Lcom/fusepowered/util/AccountType;

    .line 11
    new-instance v0, Lcom/fusepowered/util/AccountType;

    const-string v1, "FUSE_TWITTER"

    invoke-direct {v0, v1, v7, v7}, Lcom/fusepowered/util/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/AccountType;->FUSE_TWITTER:Lcom/fusepowered/util/AccountType;

    .line 12
    new-instance v0, Lcom/fusepowered/util/AccountType;

    const-string v1, "FUSE_OPENFEINT"

    invoke-direct {v0, v1, v8, v8}, Lcom/fusepowered/util/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/AccountType;->FUSE_OPENFEINT:Lcom/fusepowered/util/AccountType;

    .line 13
    new-instance v0, Lcom/fusepowered/util/AccountType;

    const-string v1, "FUSE_USER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/AccountType;->FUSE_USER:Lcom/fusepowered/util/AccountType;

    .line 14
    new-instance v0, Lcom/fusepowered/util/AccountType;

    const-string v1, "FUSE_EMAIL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/AccountType;->FUSE_EMAIL:Lcom/fusepowered/util/AccountType;

    .line 15
    new-instance v0, Lcom/fusepowered/util/AccountType;

    const-string v1, "FUSE_DEVICE_ID"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/AccountType;->FUSE_DEVICE_ID:Lcom/fusepowered/util/AccountType;

    .line 16
    new-instance v0, Lcom/fusepowered/util/AccountType;

    const-string v1, "FUSE_GOOGLE_PLAY"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/AccountType;->FUSE_GOOGLE_PLAY:Lcom/fusepowered/util/AccountType;

    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/fusepowered/util/AccountType;

    sget-object v1, Lcom/fusepowered/util/AccountType;->NONE:Lcom/fusepowered/util/AccountType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/util/AccountType;->FUSE_GAMECENTER:Lcom/fusepowered/util/AccountType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/util/AccountType;->FUSE_FACEBOOK:Lcom/fusepowered/util/AccountType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/util/AccountType;->FUSE_TWITTER:Lcom/fusepowered/util/AccountType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fusepowered/util/AccountType;->FUSE_OPENFEINT:Lcom/fusepowered/util/AccountType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/util/AccountType;->FUSE_USER:Lcom/fusepowered/util/AccountType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fusepowered/util/AccountType;->FUSE_EMAIL:Lcom/fusepowered/util/AccountType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fusepowered/util/AccountType;->FUSE_DEVICE_ID:Lcom/fusepowered/util/AccountType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fusepowered/util/AccountType;->FUSE_GOOGLE_PLAY:Lcom/fusepowered/util/AccountType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/util/AccountType;->$VALUES:[Lcom/fusepowered/util/AccountType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "accountNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/fusepowered/util/AccountType;->accountNumber:I

    .line 22
    return-void
.end method

.method public static getAccountTypeByNumber(I)Lcom/fusepowered/util/AccountType;
    .locals 1
    .param p0, "accountNumber"    # I

    .prologue
    .line 33
    packed-switch p0, :pswitch_data_0

    .line 53
    sget-object v0, Lcom/fusepowered/util/AccountType;->NONE:Lcom/fusepowered/util/AccountType;

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    sget-object v0, Lcom/fusepowered/util/AccountType;->NONE:Lcom/fusepowered/util/AccountType;

    goto :goto_0

    .line 37
    :pswitch_1
    sget-object v0, Lcom/fusepowered/util/AccountType;->FUSE_GAMECENTER:Lcom/fusepowered/util/AccountType;

    goto :goto_0

    .line 39
    :pswitch_2
    sget-object v0, Lcom/fusepowered/util/AccountType;->FUSE_FACEBOOK:Lcom/fusepowered/util/AccountType;

    goto :goto_0

    .line 41
    :pswitch_3
    sget-object v0, Lcom/fusepowered/util/AccountType;->FUSE_TWITTER:Lcom/fusepowered/util/AccountType;

    goto :goto_0

    .line 43
    :pswitch_4
    sget-object v0, Lcom/fusepowered/util/AccountType;->FUSE_OPENFEINT:Lcom/fusepowered/util/AccountType;

    goto :goto_0

    .line 45
    :pswitch_5
    sget-object v0, Lcom/fusepowered/util/AccountType;->FUSE_USER:Lcom/fusepowered/util/AccountType;

    goto :goto_0

    .line 47
    :pswitch_6
    sget-object v0, Lcom/fusepowered/util/AccountType;->FUSE_EMAIL:Lcom/fusepowered/util/AccountType;

    goto :goto_0

    .line 49
    :pswitch_7
    sget-object v0, Lcom/fusepowered/util/AccountType;->FUSE_DEVICE_ID:Lcom/fusepowered/util/AccountType;

    goto :goto_0

    .line 51
    :pswitch_8
    sget-object v0, Lcom/fusepowered/util/AccountType;->FUSE_GOOGLE_PLAY:Lcom/fusepowered/util/AccountType;

    goto :goto_0

    .line 33
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
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/AccountType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/fusepowered/util/AccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/util/AccountType;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/util/AccountType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/fusepowered/util/AccountType;->$VALUES:[Lcom/fusepowered/util/AccountType;

    invoke-virtual {v0}, [Lcom/fusepowered/util/AccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/AccountType;

    return-object v0
.end method


# virtual methods
.method public getAccountNumber()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/fusepowered/util/AccountType;->accountNumber:I

    return v0
.end method

.method public setAccountNumber(I)V
    .locals 0
    .param p1, "accountNumber"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/fusepowered/util/AccountType;->accountNumber:I

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    const-string v0, "{ \"AccountType\" : { \"%s\" : %d} }"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
