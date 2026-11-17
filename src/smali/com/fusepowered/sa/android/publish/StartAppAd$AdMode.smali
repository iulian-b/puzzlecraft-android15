.class public final enum Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/StartAppAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

.field public static final enum AUTOMATIC:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

.field public static final enum FULLPAGE:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

.field public static final enum OFFERWALL:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

.field public static final enum OVERLAY:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    const-string v1, "AUTOMATIC"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    new-instance v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    const-string v1, "FULLPAGE"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->FULLPAGE:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    new-instance v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    const-string v1, "OFFERWALL"

    invoke-direct {v0, v1, v4}, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->OFFERWALL:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    new-instance v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    const-string v1, "OVERLAY"

    invoke-direct {v0, v1, v5}, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->OVERLAY:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    sget-object v1, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->AUTOMATIC:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->FULLPAGE:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->OFFERWALL:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->OVERLAY:Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->$VALUES:[Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;
    .locals 1

    const-class v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->$VALUES:[Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    invoke-virtual {v0}, [Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/sa/android/publish/StartAppAd$AdMode;

    return-object v0
.end method
