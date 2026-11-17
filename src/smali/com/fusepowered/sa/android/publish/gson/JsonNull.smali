.class public final Lcom/fusepowered/sa/android/publish/gson/JsonNull;
.super Lcom/fusepowered/sa/android/publish/gson/JsonElement;


# static fields
.field public static final INSTANCE:Lcom/fusepowered/sa/android/publish/gson/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fusepowered/sa/android/publish/gson/JsonNull;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/gson/JsonNull;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/gson/JsonNull;->INSTANCE:Lcom/fusepowered/sa/android/publish/gson/JsonNull;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/fusepowered/sa/android/publish/gson/JsonElement;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic deepCopy()Lcom/fusepowered/sa/android/publish/gson/JsonElement;
    .locals 1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/gson/JsonNull;->deepCopy()Lcom/fusepowered/sa/android/publish/gson/JsonNull;

    move-result-object v0

    return-object v0
.end method

.method deepCopy()Lcom/fusepowered/sa/android/publish/gson/JsonNull;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/gson/JsonNull;->INSTANCE:Lcom/fusepowered/sa/android/publish/gson/JsonNull;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/fusepowered/sa/android/publish/gson/JsonNull;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const-class v0, Lcom/fusepowered/sa/android/publish/gson/JsonNull;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
