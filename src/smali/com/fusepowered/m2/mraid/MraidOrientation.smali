.class final enum Lcom/fusepowered/m2/mraid/MraidOrientation;
.super Ljava/lang/Enum;
.source "MraidOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/m2/mraid/MraidOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/m2/mraid/MraidOrientation;

.field public static final enum LANDSCAPE:Lcom/fusepowered/m2/mraid/MraidOrientation;

.field public static final enum NONE:Lcom/fusepowered/m2/mraid/MraidOrientation;

.field public static final enum PORTRAIT:Lcom/fusepowered/m2/mraid/MraidOrientation;


# instance fields
.field private final mActivityInfoOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/fusepowered/m2/mraid/MraidOrientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3, v4}, Lcom/fusepowered/m2/mraid/MraidOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/m2/mraid/MraidOrientation;->PORTRAIT:Lcom/fusepowered/m2/mraid/MraidOrientation;

    .line 7
    new-instance v0, Lcom/fusepowered/m2/mraid/MraidOrientation;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v4, v3}, Lcom/fusepowered/m2/mraid/MraidOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/m2/mraid/MraidOrientation;->LANDSCAPE:Lcom/fusepowered/m2/mraid/MraidOrientation;

    .line 8
    new-instance v0, Lcom/fusepowered/m2/mraid/MraidOrientation;

    const-string v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/fusepowered/m2/mraid/MraidOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/m2/mraid/MraidOrientation;->NONE:Lcom/fusepowered/m2/mraid/MraidOrientation;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/m2/mraid/MraidOrientation;

    sget-object v1, Lcom/fusepowered/m2/mraid/MraidOrientation;->PORTRAIT:Lcom/fusepowered/m2/mraid/MraidOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/m2/mraid/MraidOrientation;->LANDSCAPE:Lcom/fusepowered/m2/mraid/MraidOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/m2/mraid/MraidOrientation;->NONE:Lcom/fusepowered/m2/mraid/MraidOrientation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fusepowered/m2/mraid/MraidOrientation;->$VALUES:[Lcom/fusepowered/m2/mraid/MraidOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "activityInfoOrientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/fusepowered/m2/mraid/MraidOrientation;->mActivityInfoOrientation:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/m2/mraid/MraidOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/fusepowered/m2/mraid/MraidOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m2/mraid/MraidOrientation;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/m2/mraid/MraidOrientation;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/fusepowered/m2/mraid/MraidOrientation;->$VALUES:[Lcom/fusepowered/m2/mraid/MraidOrientation;

    invoke-virtual {v0}, [Lcom/fusepowered/m2/mraid/MraidOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/m2/mraid/MraidOrientation;

    return-object v0
.end method


# virtual methods
.method getActivityInfoOrientation()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/fusepowered/m2/mraid/MraidOrientation;->mActivityInfoOrientation:I

    return v0
.end method
