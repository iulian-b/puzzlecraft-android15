.class Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;
.super Ljava/lang/Object;
.source "MRAIDCalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewCalendarEntryCreator"
.end annotation


# instance fields
.field private final data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

.field private endDate:Ljava/util/Date;

.field private startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V
    .locals 0
    .param p1, "data"    # Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    .line 145
    return-void
.end method

.method private addReminder(Landroid/content/Context;JLjava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # J
    .param p4, "reminder"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 222
    const-string v9, "-"

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 223
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 224
    .local v4, "difference":J
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/fusepowered/nx/common/Utilities;->millisecondsToMinutes(J)J

    move-result-wide v6

    .line 236
    .local v6, "minutes":J
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 237
    .local v2, "cr":Landroid/content/ContentResolver;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "minutes"

    long-to-int v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v9, "event_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    const-string v9, "method"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    sget-object v9, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 243
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "difference":J
    .end local v6    # "minutes":J
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 226
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/fusepowered/nx/common/Utilities;->parseHtmlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 227
    .local v3, "reminderDate":Ljava/util/Date;
    if-eqz v3, :cond_0

    .line 230
    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->startDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long v4, v10, v12

    .line 231
    .restart local v4    # "difference":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-ltz v9, :cond_0

    .line 234
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/fusepowered/nx/common/Utilities;->millisecondsToMinutes(J)J

    move-result-wide v6

    .restart local v6    # "minutes":J
    goto :goto_0
.end method

.method private parseStatus()I
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    iget-object v4, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v4}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "status":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 195
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 204
    :cond_1
    :goto_1
    :pswitch_0
    return v1

    .line 195
    :sswitch_0
    const-string v5, "tentative"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v1

    goto :goto_0

    :sswitch_1
    const-string v5, "confirmed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string v5, "cancelled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 199
    goto :goto_1

    :pswitch_2
    move v1, v3

    .line 201
    goto :goto_1

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4eba25d2 -> :sswitch_0
        -0x2fedbca1 -> :sswitch_1
        0x1c682951 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseTransparency()I
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v1}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getTransparency()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "transparency":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "transparent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const/4 v1, 0x1

    .line 212
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/content/Context;Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calendar"    # Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getStart()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fusepowered/nx/common/Utilities;->parseHtmlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->startDate:Ljava/util/Date;

    .line 152
    iget-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getEnd()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fusepowered/nx/common/Utilities;->parseHtmlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->endDate:Ljava/util/Date;

    .line 153
    iget-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->startDate:Ljava/util/Date;

    if-nez v8, :cond_0

    .line 154
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Invalid start time."

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 156
    :cond_0
    iget-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->endDate:Ljava/util/Date;

    if-nez v8, :cond_1

    .line 157
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Invalid end time."

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 160
    :cond_1
    iget-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-static {v8}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils;->access$100(Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 163
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "dtstart"

    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->startDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string v8, "dtend"

    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->endDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    const-string v8, "title"

    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v9}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v8, "description"

    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v9}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getSummary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v8, "eventLocation"

    iget-object v9, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v9}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v8, "availability"

    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->parseTransparency()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    iget-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->startDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v8

    invoke-static {v8}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "timeZoneIds":[Ljava/lang/String;
    if-eqz v5, :cond_4

    array-length v8, v5

    if-lez v8, :cond_4

    .line 173
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "timeZone":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Time Zone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fusepowered/nx/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 178
    const-string v8, "eventTimezone"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v8, "calendar_id"

    invoke-virtual {p2}, Lcom/fusepowered/nx/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    invoke-direct {p0}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->parseStatus()I

    move-result v1

    .line 181
    .local v1, "status":I
    if-ltz v1, :cond_2

    .line 182
    const-string v8, "eventStatus"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    :cond_2
    sget-object v8, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 185
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 187
    .local v2, "eventId":J
    iget-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getReminder()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fusepowered/nx/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 188
    iget-object v8, p0, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v8}, Lcom/fusepowered/nx/monetization/mraid/objects/CalendarEntryData;->getReminder()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v2, v3, v8}, Lcom/fusepowered/nx/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->addReminder(Landroid/content/Context;JLjava/lang/String;)V

    .line 190
    :cond_3
    return-void

    .line 175
    .end local v1    # "status":I
    .end local v2    # "eventId":J
    .end local v4    # "timeZone":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "timeZone":Ljava/lang/String;
    goto :goto_0
.end method
