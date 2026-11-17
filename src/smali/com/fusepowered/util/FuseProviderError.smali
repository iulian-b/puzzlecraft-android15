.class public final enum Lcom/fusepowered/util/FuseProviderError;
.super Ljava/lang/Enum;
.source "FuseProviderError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/FuseProviderError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/FuseProviderError;

.field public static final enum PROVIDER_ADAPTER_ERROR:Lcom/fusepowered/util/FuseProviderError;

.field public static final enum PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

.field public static final enum PROVIDER_TIMED_OUT:Lcom/fusepowered/util/FuseProviderError;

.field public static final enum PROVIDER_UNDEFINED:Lcom/fusepowered/util/FuseProviderError;

.field public static final enum PROVIDER_UNRECOGNIZED:Lcom/fusepowered/util/FuseProviderError;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/fusepowered/util/FuseProviderError;

    const-string v1, "PROVIDER_NO_FILL"

    invoke-direct {v0, v1, v2, v2}, Lcom/fusepowered/util/FuseProviderError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    .line 5
    new-instance v0, Lcom/fusepowered/util/FuseProviderError;

    const-string v1, "PROVIDER_TIMED_OUT"

    invoke-direct {v0, v1, v3, v3}, Lcom/fusepowered/util/FuseProviderError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_TIMED_OUT:Lcom/fusepowered/util/FuseProviderError;

    .line 6
    new-instance v0, Lcom/fusepowered/util/FuseProviderError;

    const-string v1, "PROVIDER_ADAPTER_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/fusepowered/util/FuseProviderError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_ADAPTER_ERROR:Lcom/fusepowered/util/FuseProviderError;

    .line 7
    new-instance v0, Lcom/fusepowered/util/FuseProviderError;

    const-string v1, "PROVIDER_UNRECOGNIZED"

    invoke-direct {v0, v1, v5, v5}, Lcom/fusepowered/util/FuseProviderError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_UNRECOGNIZED:Lcom/fusepowered/util/FuseProviderError;

    .line 8
    new-instance v0, Lcom/fusepowered/util/FuseProviderError;

    const-string v1, "PROVIDER_UNDEFINED"

    invoke-direct {v0, v1, v6, v6}, Lcom/fusepowered/util/FuseProviderError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_UNDEFINED:Lcom/fusepowered/util/FuseProviderError;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fusepowered/util/FuseProviderError;

    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_NO_FILL:Lcom/fusepowered/util/FuseProviderError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_TIMED_OUT:Lcom/fusepowered/util/FuseProviderError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_ADAPTER_ERROR:Lcom/fusepowered/util/FuseProviderError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_UNRECOGNIZED:Lcom/fusepowered/util/FuseProviderError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/util/FuseProviderError;->PROVIDER_UNDEFINED:Lcom/fusepowered/util/FuseProviderError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fusepowered/util/FuseProviderError;->$VALUES:[Lcom/fusepowered/util/FuseProviderError;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/fusepowered/util/FuseProviderError;->id:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/FuseProviderError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/util/FuseProviderError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/util/FuseProviderError;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/util/FuseProviderError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/util/FuseProviderError;->$VALUES:[Lcom/fusepowered/util/FuseProviderError;

    invoke-virtual {v0}, [Lcom/fusepowered/util/FuseProviderError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/FuseProviderError;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 17
    const-string v0, "{ \"FuseProviderError\" : { \"%s\" : %d} }"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/fusepowered/util/FuseProviderError;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
