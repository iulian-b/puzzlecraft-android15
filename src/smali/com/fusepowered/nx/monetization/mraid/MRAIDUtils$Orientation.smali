.class public final enum Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;
.super Ljava/lang/Enum;
.source "MRAIDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

.field public static final enum LANDSCAPE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

.field public static final enum NONE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

.field public static final enum PORTRAIT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    const-string v1, "PORTRAIT"

    const-string v2, "portrait"

    invoke-direct {v0, v1, v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->PORTRAIT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    .line 110
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    const-string v1, "LANDSCAPE"

    const-string v2, "landscape"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->LANDSCAPE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    .line 111
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v5, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->NONE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->PORTRAIT:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->LANDSCAPE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->NONE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->$VALUES:[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput-object p3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->value:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static getOrientation(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->values()[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 127
    .local v0, "orientation":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;
    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    .end local v0    # "orientation":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;
    :goto_1
    return-object v0

    .line 126
    .restart local v0    # "orientation":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "orientation":Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;
    :cond_1
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->NONE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->$VALUES:[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    invoke-virtual {v0}, [Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$Orientation;->value:Ljava/lang/String;

    return-object v0
.end method
