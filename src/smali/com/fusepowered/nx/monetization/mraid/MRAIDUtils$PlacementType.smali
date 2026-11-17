.class public final enum Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
.super Ljava/lang/Enum;
.source "MRAIDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlacementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

.field public static final enum INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

.field public static final enum INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;


# instance fields
.field private final placement:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    const-string v1, "INLINE"

    const-string v2, "inline"

    invoke-direct {v0, v1, v3, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    .line 85
    new-instance v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    const-string v1, "INTERSTITIAL"

    const-string v2, "interstitial"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INLINE:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->INTERSTITIAL:Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->$VALUES:[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->placement:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const-class v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->$VALUES:[Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    invoke-virtual {v0}, [Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->placement:Ljava/lang/String;

    invoke-static {v0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils;->wrapInJSQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->placement:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDUtils$PlacementType;->placement:Ljava/lang/String;

    return-object v0
.end method
